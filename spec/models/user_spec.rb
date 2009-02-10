require File.join( File.dirname(__FILE__), '..', "spec_helper" )

describe User do
  
  before(:each) do
    @user = User.new
  end

  it "should have an email address" do
    @user.should have_at_least(1).errors_on(:email)
  end
  
  it "should validate the email address format" do
    pending
  end
  
  it "should have a password" do
    @user.should have_at_least(1).errors_on(:password)
  end
  
  it "should have been activated before authenticating" do
    pending
  end
  
  it "should be activatable" do
    @user.should_not be_activated    
    @user.activate!
    @user.should be_activated    
  end
  
  it "should be authenticable" do
    @user.should authenticate("username","password")
  end
  
  it "should allow a first name" do
    @user.first_name = "Joe"
    @user.first_name.should == "Joe"
  end
  
  it "should allow a last name" do
    @user.last_name = "Smith"
    @user.last_name.should == "Smith"
  end
  
  it "should allow a full name" do
    @user.first_name = "Joe"
    @user.last_name = "Smith"
    @user.full_name.should == "Joe Smith"
  end
  
  it "should allow a date of birth" do
    now_date == Date.now
    @user.dob = now_date
    @user.dob.should == now_date
  end
  
  it "should allow a gender" do
    @user.gender = "male"
    @user.gender.should == "male"
  end
  
  it "should limit genders to only being male or female" do
    @user.gender = "mineral"
    @user.should_not be_valid
    @user.gender = "male"
    @user.should be_valid
    @user.gender = "female"
    @user.should be_valid
  end
  
  it "should allow a country" do
    @user.country = "Australia"
    @user.country.should == "Australia"
  end
  
  it "should allow a postal code" do
    @user.post_code = "EC1 2BC"
    @user.post_code.should == "EC1 2BC"
  end
  
  it "should make the password resettable" do
    @user.should respond_to(:reset_password!)
  end
  
  it "should notify the user of a new password" do
    @user.reset_password!
    # TODO: Check that mailer is called
    pending
  end
  
  it "should notify the user of a password change" do
    @user.password = "new_password"
    # TODO: Check that before_save hook checks for password change, and emails
    # notification if field is dirty
    @user.save!
    pending
  end
  
  it "should notify the user of an email change" do
    @user.email = "newemail@address.com"
    # TODO: Check that before_save hook checks for email change, and emails
    # notification to old email address if field is dirty
    @user.save!
    pending
  end
  
  it "should require the user to re-confirm a changed email" do
    @user.email = "newemail@address.com"
    @user.save!
    @user.should_not be_activated
  end
  
  it "should allow the user login to be remembered" do
    pending
  end
  
  it "should authenticate against an OpenID provider" do
    pending
  end
  
  it "should remove any remembered tokens on logout" do
    pending
  end
  
  it "should be connectable" do
    pending
  end

end