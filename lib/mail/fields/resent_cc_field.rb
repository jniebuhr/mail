# 
# resent-cc       =       "Resent-Cc:" address-list CRLF
module Mail
  class ResentCcField < StructuredField
    
    include Mail::AddressField
    
    FIELD_NAME = 'resent-cc'
    
    def initialize(*args)
      super(FIELD_NAME, strip_field(FIELD_NAME, args.last))
    end
    
  end
end