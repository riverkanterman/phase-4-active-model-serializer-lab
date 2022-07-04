class PostSerializer < ActiveModel::Serializer
  attributes  :title, :content, :short_content, :tags
  belongs_to :author


  def short_content
   sum = object.content 
   "#{sum[0,40]}..."
  end
end
