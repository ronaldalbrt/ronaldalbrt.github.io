function hfun_bar(vname)
  val = Meta.parse(vname[1])
  return round(sqrt(val), digits=2)
end

function hfun_m1fill(vname)
  var = vname[1]
  return pagevar("index", var)
end

function lx_baz(com, _)
  # keep this first line
  brace_content = Franklin.content(com.braces[1]) # input string
  # do whatever you want here
  return uppercase(brace_content)
end

"""
    {{ projects }}

Add the list of projects contained in the `/projects/` folder.
"""
function hfun_projects()
  io = IOBuffer()
  subfolders = ["conference_full_papers", "journals", "workshops", "posters", "others"]

  folder_to_title = Dict(
    "conference_full_papers" => "Conference Full Papers",
    "journals" => "Journal Publications",
    "workshops" => "Workshops",
    "posters" => "Conference Posters",
    "others" => "Others"
  )
  
  for folder in subfolders
    years = readdir("projects/$folder")
    for year in years
      ys = "$year"
      base = joinpath("projects", folder, ys)
      isdir(base) || continue
      
      posts = filter!(p -> endswith(p, ".md"), readdir(base))
      isempty(posts) && continue
      
      write(io, "\n**$(folder_to_title[folder])**\n")
      write(io, "\n~~~<h3>$year</h3>~~~\n")
      days  = zeros(Int, length(posts))
      lines = Vector{String}(undef, length(posts))
      for (i, post) in enumerate(posts)
        ps  = splitext(post)[1]
        url = "/projects/$folder/$ys/$ps"
        surl = strip(url, '/')

        title = pagevar(surl, :title)
        pubdate = pagevar(surl, :published)
        rawdate = Date(pubdate, dateformat"d U Y")
        days[i] = day(rawdate)
        
        date = Dates.format(rawdate, "U d, YYYY")
      
        lines[i] = "\n[$title]($url)\n$date\n"
      end
        
        # sort by day
        foreach(line -> write(io, line), lines[sortperm(days, rev=true)])
    end
  end

  # markdown conversion adds `<p>` beginning and end but
  # we want to  avoid this to avoid an empty separator
  r = "<div class=bloglist>\n" * 
      Franklin.fd2html(String(take!(io)), internal=true) * 
      "\n</div>\n"
  return r
end
