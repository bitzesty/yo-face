require "yo/face/version"

module Yo
  module Face
    class Generator
      M = ["002", "003", "004", "006", "007", "010", "012", "014", "016", "017", "019", "021", "023", "025", "026", "027", "031", "032", "033", "035", "036", "041", "043", "044", "045", "047", "049", "050"]
      F = ["001", "005", "008", "009", "011", "013", "015", "018", "020", "022", "024", "028", "029", "030", "034", "037", "038", "039", "040", "042", "046", "048"] 

      def image(gender=nil)
        if gender
          if gender == "M"
            File.expand_path(male_image_paths[rand(M.count)], __FILE__)    
          else
            File.expand_path(female_image_paths[rand(F.count)], __FILE__)
          end
        else
          File.expand_path(all_image_paths[rand(M.count + F.count)], __FILE__)
        end
      end

      private

      def all_image_paths
        male_image_paths + female_image_paths
      end

      def male_image_paths
        M.map do |i|
          base_image_path(i)
        end
      end

      def female_image_paths
        F.map do |i|
          base_image_path(i)
        end
      end

      def base_image_path(i)
        "../../assets/model-#{i}.jpg"
      end
    end
  end
end
