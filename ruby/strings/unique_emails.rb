# @param {String[]} emails
# @return {Integer}
def num_unique_emails(emails)
    seen = {}
    counter = 0

    emails.each do |email|
      local, domain = email.split('@')
      local = local.gsub('.', '').split('+')[0]
      seen[domain] ||= []
      if !seen[domain].include?(local)
        seen[domain] << local
        counter += 1
      end
    end

    return counter
end

emails = ["test.email+alex@leetcode.com","test.e.mail+bob.cathy@leetcode.com","testemail+david@lee.tcode.com"]
num_unique_emails(emails)