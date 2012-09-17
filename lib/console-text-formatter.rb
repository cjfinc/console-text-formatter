require 'console-text-formatter/version'

module ConsoleTextFormatter
  extend self

  def self.format(recs, fields)
    fields_width = Array.new(fields.length)

    fields.each_index{|i| fields_width[i] = fields[i].to_s.length }

    recs.each do |rec|
      fields.each_index do |i|
        if (fields_width[i] < rec[fields[i]].to_s.length)
          fields_width[i] = rec[fields[i]].to_s.length
        end
      end
    end
    fields_width.each_index{|i| fields_width[i] += 2 }

    rec_width = fields_width.length - 1
    fields_width.each{|x| rec_width+=x }

    print_data(recs, rec_width, fields, fields_width)
  end

  # print formatter
  def self.pad(str, len)
    return "".ljust(len) if str.nil?
    #str = str.slice(0, len) # truncate long strings
    " "+str.ljust(len-1) # pad with whitespace
  end
  
  def self.build_row(items, pads)
    output = ''
    items.each_with_index do |item, i|
      output << pad(item, pads[i]) << "|" 
    end
    output.chop!
    output << "\n"
  end
  
  def self.print_data (recs, width, fields, field_width)
    output = ''
    output = "".ljust(width,"=") << "\n" 
    output << build_row(fields, field_width)
    output << "".ljust(width,"-") << "\n" 
  
    # table data
    recs.each do |rec|
      output << build_row(fields.map { |r| rec[r].to_s }, field_width)
    end
    
    output << "".ljust(width,"=") << "\n" 
  
    print output
  end
end
