def parse_invoices(invoice_data)
    pattern = /(\d{4}-\d{2}-\d{2}) - ([A-Z0-9]+) - ([A-Za-z ]+) - \$(\d+)/
    entries = invoice_data.scan(pattern)

    # for each entry, extract the date, number, client, and amount
    entries.each do |entry|

        # set var to extracted values
        date, number, client, amount = entry 
        puts "Date: #{date}, Invoice #: #{number}, Client: #{client}, Amount: $#{amount}"
    end
end

invoice_entries = <<-INVOICES
2023-03-01 - INV001 - Acme Corp - $1000
2023-03-02 - INV002 - Beta LLC - $2050
2023-03-03 - INV003 - Gamma Inc - $3500
INVOICES

parse_invoices(invoice_entries)
