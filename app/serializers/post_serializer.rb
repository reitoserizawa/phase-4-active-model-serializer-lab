class PostSerializer < ActiveModel::Serializer
  attributes :title, :content
  has_many :tags
  belongs_to :author, serializer: AuthorSerializer

  def short_content
    "#{object.content[0..40]}..."
  end

end
