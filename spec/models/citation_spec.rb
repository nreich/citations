require 'spec_helper'

describe Citation do
  
  before {
    @citation = Citation.new(title: "Sample Article", 
                abstract: "This is an example",
                publish_date: "2013/01/01",
                authors: "Smith, J.; Shmoe, J.",
                )
    @citation.citable_id = 1
    @citation.citable_type = "article"
  }

  subject { @citation }

  it { should respond_to(:title) }
  it { should respond_to(:abstract) }
  it { should respond_to(:publish_date) }
  it { should respond_to(:authors) }
  it { should respond_to(:citable_id) }
  it { should respond_to(:citable_type) }

  it { should be_valid }

  describe "with blank title" do
    before { @citation.title = "" }
    it { should_not be_valid }
  end

end
