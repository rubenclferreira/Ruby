
class Email

	

	

	def initialize(subject, hash)
		@date = hash[:date] 
		@from = hash[:from]
		@subject = subject
	end

	def date
		@date
		
	end

	def from
		@from
		
	end

	def subject
		@subject
		
	end


end

class Mailbox

	def initialize(name, emails)
		@emails = emails
		@name = name
		
	end

	def emails
		@emails
		
	end

	def name
		@name
		
	end


end

class MailboxHtmlFormatter

  def initialize(mailbox)
  	@mailbox = mailbox

  	
  end

  def format
  	html = "<html>
  <head>
    <style>
      table {
        border-collapse: collapse;
      }
      td, th {
        border: 1px solid black;
        padding: 1em;
      }
    </style>
  </head>
  <body>
  <h1>#{@mailbox.name}</h1>"
@mailbox.emails.each do |email|
	html = html +
	"<tr>
		<td>#{email.date}</td>
		<td>#{email.from}</td>
		<td>#{email.subject}</td>
	</tr>"
end


    
    "<table>
      <thead>
        <tr>
          <th>Date</th>
          <th>From</th>
          <th>Subject</th>
        </tr>
      </thead>
      <tbody>"
        


      html << "\n
      </tbody>
    </table>
  </body>
</html>
  "

end

end
emails = [
  Email.new("Homework this week", { :date => "2014-12-01", :from => "Ferdous" }),
  Email.new("Keep on coding! :)", { :date => "2014-12-01", :from => "Dajana" }),
  Email.new("Re: Homework this week", { :date => "2014-12-02", :from => "Ariane" })
]
mailbox = Mailbox.new("Ruby Study Group", emails)
formatter = MailboxHtmlFormatter.new(mailbox)

puts formatter.format