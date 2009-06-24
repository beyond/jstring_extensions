require File.join(File.dirname(__FILE__),'spec_helper')
 
describe :jstring_extensions do
	describe "jstrip!" do
		it "makes '　 aaa 　' -> 'aaa'" do
			'　 a aa 　'.jstrip!.should == 'a aa'
		end

		it "returns same object" do
			a = " a"
			a.strip!.object_id.should == a.object_id
			a.should == "a"
		end
		
	end

	describe "jstrip" do
		it "makes '　 aaa 　' -> 'aaa'" do
			'　 a aa 　'.jstrip.should == 'a aa'
		end

		it "returns dup object" do
			a = " a"
			a.strip.object_id.should_not == a.object_id
			a.should == " a"
		end
	end
end
