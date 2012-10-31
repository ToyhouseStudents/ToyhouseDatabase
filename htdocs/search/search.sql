--This file contains all the SQL statements we need to create the search_index

SELECT e.`guid` as orig_id,`type`,eu.username as title,eu.name as content, `owner_guid` as author_id, '' as author,`time_updated` as last_modified FROM `elgg_entities` e,`elgg_users_entity` eu WHERE ((e.access_id = 2 OR (e.owner_guid = -1) OR (e.access_id = 0 AND e.owner_guid = -1)) and e.enabled='yes') and type='user' and e.guid=eu.guid

UNION

SELECT page_id as orig_id, 'wiki' as type, page_title as title, CONVERT(old_text USING utf8) as content, rev_user as author_id, rev_user_text as author, rev_timestamp as last_modified FROM wiki_page, wiki_revision, wiki_text WHERE rev_id=page_latest AND old_id=rev_text_id and page_namespace=0

UNION

SELECT `postid` as orig_id, 'question' as type,`title`, `content`,qa_posts.`userid` as author_id, handle as author, qa_posts.`created` as last_modified FROM `qa_posts`,qa_users WHERE qa_users.userid=qa_posts.userid

INSERT INTO `search_index`
SELECT * FROM `search_view`
