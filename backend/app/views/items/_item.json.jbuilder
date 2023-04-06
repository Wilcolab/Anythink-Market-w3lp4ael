# frozen_string_literal: true

if item.image.present?
    json.call(item, :title, :slug, :description, :image)
elsegit 
    json.call(item, :title, :slug, :description)
end
json.createdAt item.created_at
json.updatedAt item.updated_at
json.tagList item.tag_list
json.seller item.user, partial: 'profiles/profile', as: :user
json.favorited signed_in? ? current_user.favorited?(item) : false
json.favoritesCount item.favorites_count || 0
