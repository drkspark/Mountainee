import 'blog_list.dart';
class BlogListModel {
    int? totalCount;
    String? message;
    List<BlogList>? blogList;
    bool? status;

    BlogListModel({this.totalCount, this.message, this.blogList, this.status});

    BlogListModel.fromJson(Map<String, dynamic> json) {
        totalCount = json["TotalCount"];
        message = json["Message"];
        blogList = json["BlogList"]==null ? null : (json["BlogList"] as List).map((e)=>BlogList.fromJson(e)).toList();
        status = json["Status"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data =  <String, dynamic>{};
        data["TotalCount"] = totalCount;
        data["Message"] = message;
        if(blogList != null) {
          data["BlogList"] = blogList?.map((e)=>e.toJson()).toList();
        }
        data["Status"] = status;
        return data;
    }
}