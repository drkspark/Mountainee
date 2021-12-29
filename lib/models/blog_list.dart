
class BlogList {
    String? blogId;
    String? bloggerName;
    String? bloggerId;
    String? likes;
    bool? liked;
    String? latitude;
    String? longitude;
    String? mountain;
    String? shortDescription;
    String? wordsByBlogger;
    String? postTime;
    String? image;

    BlogList({this.blogId, this.bloggerName, this.bloggerId, this.likes, this.liked, this.latitude, this.longitude, this.mountain, this.shortDescription, this.wordsByBlogger, this.postTime, this.image});

    BlogList.fromJson(Map<String, dynamic> json) {
        blogId = json["BlogID"];
        bloggerName = json["BloggerName"];
        bloggerId = json["BloggerID"];
        likes = json["Likes"];
        liked = json["Liked"];
        latitude = json["Latitude"];
        longitude = json["Longitude"];
        mountain = json["Mountain"];
        shortDescription = json["ShortDescription"];
        wordsByBlogger = json["WordsByBlogger"];
        postTime = json["PostTime"];
        image = json["image"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data =  <String, dynamic>{};
        data["BlogID"] = blogId;
        data["BloggerName"] = bloggerName;
        data["BloggerID"] = bloggerId;
        data["Likes"] = likes;
        data["Liked"] = liked;
        data["Latitude"] = latitude;
        data["Longitude"] = longitude;
        data["Mountain"] = mountain;
        data["ShortDescription"] = shortDescription;
        data["WordsByBlogger"] = wordsByBlogger;
        data["PostTime"] = postTime;
        data["image"] = image;
        return data;
    }
}