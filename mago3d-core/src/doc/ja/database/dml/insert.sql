-- ユーザーグループのテーブルのデフォルトの入力
insert into user_group(
	user_group_id, group_key, group_name, parent, depth, view_order, default_yn, use_yn, description
) values(
	1, 'SUPER_ADMIN', 'スーパー管理者', 0, 1, 1, 'Y', 'Y', 'デフォルト'
),
(
	2, 'USER', 'ユーザー', 0, 1, 2, 'Y', 'Y', 'デフォルト'
);

-- スーパー管理者登録
insert into user_info(
	user_id, user_group_id, user_name, password, salt, user_role_check_yn, last_login_date
) values (
	'admin', 1, 'スーパー管理者', 'パスワード', 'salt', 'N', now()
);

-- メニュー
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, css_class, default_yn, use_yn) values(1, '0', 'ホーム', 'HOME', 0 , 1, 1, '/main/index.do', 'glyph-home', 'N', 'N');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, css_class, default_yn, use_yn) values(2, '0', 'ユーザー', 'USER', 0 , 1, 2, '/user/list-user.do', 'glyph-users', 'Y', 'Y');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, css_class, default_yn, use_yn) values(21, '0', 'ユーザーグループ', 'USER', 2 , 2, 1, '/user/list-user-group.do', 'glyph-users', 'N', 'Y');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, css_class, default_yn, use_yn) values(22, '0', 'ユーザーリスト', 'USER', 2 , 2, 2, '/user/list-user.do', 'glyph-users', 'N', 'Y');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, css_class, default_yn, use_yn) values(23, '0', 'ユーザー登録', 'USER', 2 , 2, 3, '/user/input-user.do', 'glyph-users', 'N', 'Y');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, url_alias, css_class, default_yn, use_yn, display_yn) 
values(24, '0', 'ユーザーPassword変更', 'USER', 2 , 2, 4, '/user/modify-password.do', '/user/list-user.do', 'glyph-users', 'N', 'Y', 'N');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, url_alias, css_class, default_yn, use_yn, display_yn) 
values(25, '0', 'ユーザーPassword変更', 'USER', 2 , 2, 5, '/user/update-password.do', '/user/list-user.do', 'glyph-users', 'N', 'Y', 'N');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, url_alias, css_class, default_yn, use_yn, display_yn) 
values(26, '0', 'ユーザー情報修正', 'USER', 2 , 2, 6, '/user/modify-user.do', '/user/list-user.do', 'glyph-users', 'N', 'Y', 'N');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, url_alias, css_class, default_yn, use_yn, display_yn) 
values(27, '0', 'ユーザー詳細情報', 'USER', 2 , 2, 7, '/user/detail-user.do', '/user/list-user.do', 'glyph-users', 'N', 'Y', 'N');

insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, css_class, default_yn, use_yn) values(3, '0', 'データ', 'DATA', 0 , 1, 3, '/data/list-data.do', 'glyph-monitor', 'Y', 'Y');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, css_class, default_yn, use_yn) values(31, '0', 'プロジェクトリスト', 'DATA', 3 , 2, 1, '/data/list-project.do', 'glyph-monitor', 'N', 'Y');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, css_class, default_yn, use_yn) values(32, '0', 'プロジェクト登録', 'DATA', 3 , 2, 2, '/data/input-project.do', 'glyph-monitor', 'N', 'Y');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, url_alias, css_class, default_yn, use_yn, display_yn) 
values(33, '0', 'プロジェクト詳細', 'DATA', 3 , 2, 3, '/data/modify-project.do', '/data/list-project.do', 'glyph-monitor', 'N', 'Y', 'N');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, css_class, default_yn, use_yn) values(35, '0', 'データリスト', 'DATA', 3 , 2, 5, '/data/list-data.do', 'glyph-monitor', 'N', 'Y');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, css_class, default_yn, use_yn) values(36, '0', 'データ登録', 'DATA', 3 , 2, 6, '/data/input-data.do', 'glyph-monitor', 'N', 'Y');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, css_class, default_yn, use_yn) values(37, '0', '変更要求リスト', 'DATA', 3 , 2, 7, '/data/list-data-log.do', 'glyph-monitor', 'N', 'Y');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, url_alias, css_class, default_yn, use_yn, display_yn) 
values(38, '0', 'データ詳細', 'DATA', 3 , 2, 8, '/data/detail-data.do', '/data/list-data.do', 'glyph-monitor', 'N', 'Y', 'N');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, url_alias, css_class, default_yn, use_yn, display_yn) 
values(39, '0', 'データ修正', 'DATA', 3 , 2, 9, '/data/modify-data.do', '/data/list-data.do', 'glyph-monitor', 'N', 'Y', 'N');

insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, css_class, default_yn, use_yn) values(4, '0', '問題', 'ISSUE', 0 , 1, 4, '/issue/list-issue.do', 'glyph-dashboard', 'Y', 'Y');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, css_class, default_yn, use_yn) values(42, '0', '問題リスト', 'ISSUE', 4 , 2, 2, '/issue/list-issue.do', 'glyph-dashboard', 'N', 'Y');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, css_class, default_yn, use_yn) values(43, '0', '問題登録', 'ISSUE', 4 , 2, 3, '/issue/input-issue.do', 'glyph-dashboard', 'N', 'Y');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, url_alias, css_class, default_yn, use_yn, display_yn) 
values(44, '0', '結果', 'ISSUE', 4 , 2, 4, '/issue/result-issue.do', '/issue/list-issue.do', 'glyph-dashboard', 'N', 'Y', 'N');

insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, css_class, default_yn, use_yn) values(5, '0', '統計と履歴', 'STATISTICS', 0 , 1, 5, '/statistic/index.do', 'glyph-chart', 'N', 'Y');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, css_class, default_yn, use_yn) values(51, '0', '統計', 'STATISTICS', 5 , 2, 1, '/statistic/index.do', 'glyph-chart', 'N', 'Y');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, css_class, default_yn, use_yn) values(52, '0', 'アクセス履歴', 'STATISTICS', 5 , 2, 2, '/access/list-access-log.do', 'glyph-chart', 'N', 'Y');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, css_class, default_yn, use_yn) values(53, '0', '定期点検', 'STATISTICS', 5 , 2, 3, '/report/list-report-maintenance.do', 'glyph-chart', 'N', 'Y');

insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, css_class, default_yn, use_yn) values(6, '0', 'スケジュール', 'SCHEDULE', 0 , 1, 6, '/schedule/list-schedule.do', 'glyph-check', 'N', 'Y');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, css_class, default_yn, use_yn) values(61, '0', 'スケジュールリスト', 'STATISTICS', 6 , 2, 1, '/schedule/list-schedule.do', 'glyph-check', 'N', 'Y');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, css_class, default_yn, use_yn) values(62, '0', 'スケジュール実行履歴', 'STATISTICS', 6 , 2, 2, '/schedule/list-schedule-log.do', 'glyph-check', 'N', 'Y');

insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, css_class, default_yn, use_yn) values(7, '0', 'API', 'API', 0 , 1, 7, '/api/api-guide.do', 'glyph-lock', 'N', 'Y');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, css_class, default_yn, use_yn) values(71, '0', '使用ガイド', 'API', 7 , 2, 1, '/api/api-guide.do', 'glyph-lock', 'N', 'Y');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, css_class, default_yn, use_yn) values(72, '0', '使用 リスト', 'API', 7 , 2, 2, '/api/list-api-log.do', 'glyph-lock', 'N', 'Y');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, css_class, default_yn, use_yn) values(73, '0', 'Private API リスト', 'API', 7 , 2, 3, '/api/list-external-service.do', 'glyph-lock', 'N', 'Y');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, url_alias, css_class, default_yn, use_yn, display_yn) 
values(74, '0', 'Private API 修正', 'API', 7 , 2, 4, '/api/modify-external-service.do', '/api/list-external-service.do', 'glyph-lock', 'N', 'Y', 'N');

insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, css_class, default_yn, use_yn) values(8, '0', '環境設定', 'CONFIGURATION', 0 , 1, 8, '/config/modify-policy.do', 'glyph-settings', 'Y', 'Y');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, css_class, default_yn, use_yn) values(81, '0', '運営ポリシー', 'CONFIGURATION', 8 , 2, 1, '/config/modify-policy.do', 'glyph-settings', 'Y', 'Y');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, css_class, default_yn, use_yn) values(82, '0', 'メニュー設定', 'CONFIGURATION', 8 , 2, 2, '/config/list-menu.do', 'glyph-settings', 'Y', 'Y');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, css_class, default_yn, use_yn) values(83, '0', 'ライセンス', 'CONFIGURATION', 8 , 2, 3, '/config/modify-license.do', 'glyph-settings', 'Y', 'Y');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, css_class, default_yn, use_yn) values(84, '0', 'ウィジェット設定', 'CONFIGURATION', 8 , 2, 4, '/config/modify-widget.do', 'glyph-settings', 'N', 'Y');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, css_class, default_yn, use_yn) values(85, '0', '権限設定', 'CONFIGURATION', 8 , 2, 5, '/role/list-role.do', 'glyph-settings', 'N', 'Y');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, css_class, default_yn, use_yn) values(86, '0', '共通コード設定', 'CONFIGURATION', 8 , 2, 6, '/code/list-code.do', 'glyph-settings', 'N', 'Y');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, url_alias, css_class, default_yn, use_yn, display_yn) 
values(87, '0', '権限の設定を変更', 'CONFIGURATION', 8 , 2, 7, '/role/modify-role.do', '/role/list-role.do', 'glyph-settings', 'N', 'Y', 'N');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, url_alias, css_class, default_yn, use_yn, display_yn) 
values(88, '0', '共通コート修正', 'CONFIGURATION', 8 , 2, 8, '/code/modify-code.do', '/code/list-code.do', 'glyph-settings', 'N', 'Y', 'N');

insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, css_class, default_yn, use_yn) values(10, '0', '掲示板', 'BOARD', 0 , 1, 10, '/board/list-notice.do', 'glyph-imark-dot', 'Y', 'Y');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, css_class, default_yn, use_yn) values(101, '0', 'お知らせ リスト', 'NOTICE', 10 , 2, 1, '/board/list-notice.do', 'glyph-imark-dot', 'N', 'Y');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, css_class, default_yn, use_yn) values(102, '0', 'お知らせ 登録', 'NOTICE', 10 , 2, 5, '/board/input-notice.do', 'glyph-imark-dot', 'N', 'Y');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, css_class, default_yn, use_yn) values(103, '0', 'FAQ リスト', 'FAQ', 10 , 2, 2, '/board/list-faq.do', 'glyph-imark-dot', 'N', 'Y');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, css_class, default_yn, use_yn) values(104, '0', 'FAQ 登録', 'FAQ', 10 , 2, 6, '/board/input-faq.do', 'glyph-imark-dot', 'N', 'Y');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, css_class, default_yn, use_yn) values(105, '0', '報道資料 リスト', 'PRESS', 10 , 2, 3, '/board/list-press.do', 'glyph-imark-dot', 'N', 'Y');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, css_class, default_yn, use_yn) values(106, '0', '報道資料 登録', 'PRESS', 10 , 2, 7, '/board/input-press.do', 'glyph-imark-dot', 'N', 'Y');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, css_class, default_yn, use_yn) values(107, '0', 'フォーラム リスト', 'FORUM', 10 , 2, 4, '/board/list-forum.do', 'glyph-imark-dot', 'N', 'Y');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, css_class, default_yn, use_yn) values(108, '0', 'フォーラム 登録', 'FORUM', 10 , 2, 8, '/board/input-forum.do', 'glyph-imark-dot', 'N', 'Y');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, url_alias, css_class, default_yn, use_yn, display_yn) 
values(109, '0', 'お知らせ 修正', 'NOTICE', 10 , 2, 9, '/board/modify-notice.do', '/board/list-notice.do', 'glyph-imark-dot', 'N', 'Y', 'N');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, url_alias, css_class, default_yn, use_yn, display_yn) 
values(110, '0', 'お知らせ 詳細', 'NOTICE', 10 , 2, 10, '/board/detail-notice.do', '/board/list-notice.do', 'glyph-imark-dot', 'N', 'Y', 'N');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, url_alias, css_class, default_yn, use_yn, display_yn) 
values(111, '0', 'FAQ 修正', 'FAQ', 10 , 2, 11, '/board/modify-faq.do', '/board/list-faq.do', 'glyph-imark-dot', 'N', 'Y', 'N');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, url_alias, css_class, default_yn, use_yn, display_yn) 
values(112, '0', 'FAQ 詳細', 'FAQ', 10 , 2, 12, '/board/detail-faq.do', '/board/list-faq.do', 'glyph-imark-dot', 'N', 'Y', 'N');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, url_alias, css_class, default_yn, use_yn, display_yn) 
values(113, '0', '報道資料 修正', 'PRESS', 10 , 2, 13, '/board/modify-press.do', '/board/list-press.do', 'glyph-imark-dot', 'N', 'Y', 'N');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, url_alias, css_class, default_yn, use_yn, display_yn) 
values(114, '0', '報道資料 詳細', 'PRESS', 10 , 2, 14, '/board/detail-press.do', '/board/list-press.do', 'glyph-imark-dot', 'N', 'Y', 'N');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, url_alias, css_class, default_yn, use_yn, display_yn) 
values(115, '0', 'フォーラム 修正', 'FORUM', 10 , 2, 15, '/board/modify-forum.do', '/board/list-forum.do', 'glyph-imark-dot', 'N', 'Y', 'N');
insert into menu(menu_id, menu_type, name, name_en, parent, depth, view_order, url, url_alias, css_class, default_yn, use_yn, display_yn) 
values(116, '0', 'フォーラム 詳細', 'FORUM', 10 , 2, 16, '/board/detail-forum.do', '/board/list-forum.do', 'glyph-imark-dot', 'N', 'Y', 'N');

-- ユーザーグループ別メニュー
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (1, 1, 1);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (2, 1, 2);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (21, 1, 21);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (22, 1, 22);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (23, 1, 23);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (24, 1, 24);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (25, 1, 25);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (26, 1, 26);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (27, 1, 27);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (3, 1, 3);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (31, 1, 31);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (32, 1, 32);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (33, 1, 33);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (35, 1, 35);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (36, 1, 36);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (37, 1, 37);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (38, 1, 38);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (39, 1, 39);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (4, 1, 4);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (42, 1, 42);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (43, 1, 43);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (44, 1, 44);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (5, 1, 5);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (51, 1, 51);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (52, 1, 52);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (53, 1, 53);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (6, 1, 6);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (61, 1, 61);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (62, 1, 62);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (7, 1, 7);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (71, 1, 71);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (72, 1, 72);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (73, 1, 73);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (74, 1, 74);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (8, 1, 8);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (81, 1, 81);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (82, 1, 82);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (83, 1, 83);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (84, 1, 84);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (85, 1, 85);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (86, 1, 86);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (87, 1, 87);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (88, 1, 88);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (10, 1, 10);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (101, 1, 101);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (102, 1, 103);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (103, 1, 105);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (104, 1, 107);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (105, 1, 102);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (106, 1, 104);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (107, 1, 106);
insert into user_group_menu(user_group_menu_id, user_group_id, menu_id) values (108, 1, 108);


-- メイン画面のウィジェット
insert into widget(	widget_id, name, view_order, user_id) values(NEXTVAL('widget_seq'), 'projectWidget', 1, 'admin' );
insert into widget(	widget_id, name, view_order, user_id) values(NEXTVAL('widget_seq'), 'dataInfoWidget', 2, 'admin' );
insert into widget(	widget_id, name, view_order, user_id) values(NEXTVAL('widget_seq'), 'dataInfoLogListWidget', 3, 'admin' );
insert into widget(	widget_id, name, view_order, user_id) values(NEXTVAL('widget_seq'), 'issueWidget', 4, 'admin' );
insert into widget(	widget_id, name, view_order, user_id) values(NEXTVAL('widget_seq'), 'userWidget', 5, 'admin' );
insert into widget(	widget_id, name, view_order, user_id) values(NEXTVAL('widget_seq'), 'scheduleLogListWidget', 6, 'admin' );
insert into widget(	widget_id, name, view_order, user_id) values(NEXTVAL('widget_seq'), 'accessLogWidget', 7, 'admin' );
insert into widget(	widget_id, name, view_order, user_id) values(NEXTVAL('widget_seq'), 'dbcpWidget', 8, 'admin' );
insert into widget(	widget_id, name, view_order, user_id) values(NEXTVAL('widget_seq'), 'dbSessionWidget', 9, 'admin' );

-- 運営ポリシー
insert into policy(	policy_id, password_exception_char, site_name, site_admin_mobile_phone, site_admin_email) 
			values( 1, '<>&''"', 'Mago3D', 'u1Cgl3H66Gx6ruL48dZzgw==', '88qb9Zh2qZAaxa0MR2LXJA==');

-- Role
insert into role(role_id, role_name, role_key, role_type, business_type, use_yn, default_yn) values(NEXTVAL('role_seq'), 'ユーザーページのアクセス権', 'USER_USER_LOGIN', '0', '0', 'Y', 'N');
insert into role(role_id, role_name, role_key, role_type, business_type, use_yn, default_yn) values(NEXTVAL('role_seq'), '管理者ページアクセス', 'USER_ADMIN_LOGIN', '0', '0', 'Y', 'N');
insert into role(role_id, role_name, role_key, role_type, business_type, use_yn, default_yn) values(NEXTVAL('role_seq'), 'プロジェクトの削除権限', 'PROJECT_DELETE', '0', '0', 'Y', 'N');
insert into role(role_id, role_name, role_key, role_type, business_type, use_yn, default_yn) values(NEXTVAL('role_seq'), 'データの削除権限', 'DATA_DELETE', '0', '0', 'Y', 'N');

-- Private API
insert into external_service (
	external_service_id, service_code, service_name, service_type, server_ip, api_key, url_scheme, url_host, url_port, url_path, default_yn, description
) values(
	NEXTVAL('api_log_seq'), 'CACHE', 'ユーザーCACHE更新', '0', '127.0.0.1', 'M5mru2GcGZOyc+Tdy7AYUw==', 'http', 'localhost', '80', 'cache/call-cache.do', 'Y', 'test'
);

-- 共通コード
insert into common_code (
	code_type, code_key, code_name, code_name_en, code_value, use_yn, view_order
) values (
  	'USER_REGISTER_TYPE', 'USER_REGISTER_SELF', '管理者登録', 'ADMIN INSERT', 'SELF', 'Y', 1
);
insert into common_code (
	code_type, code_key, code_name, code_name_en, code_value, use_yn, view_order
) values (
	'USER_EMAIL', 'GMAIL', 'GMAIL', 'GMAIL', 'gmail.com', 'Y', 2
);

insert into common_code (
	code_type, code_key, code_name, code_name_en, code_value, use_yn, view_order, css_class, image
) values (
	'ISSUE_PRIORITY', 'ISSUE_PRIORITY_LEVEL1', '非常に重要', 'LEVEL1', 'LEVEL1', 'Y', 1, 'i1', ''
);
insert into common_code (
	code_type, code_key, code_name, code_name_en, code_value, use_yn, view_order, css_class, image
) values (
	'ISSUE_PRIORITY', 'ISSUE_PRIORITY_LEVEL2', '重要', 'LEVEL2', 'LEVEL2', 'Y', 2, 'i2', ''
);
insert into common_code (
	code_type, code_key, code_name, code_name_en, code_value, use_yn, view_order, css_class, image
) values (
	'ISSUE_PRIORITY', 'ISSUE_PRIORITY_LEVEL3', '通常', 'LEVEL3', 'LEVEL3', 'Y', 3, 'i3', ''
);
insert into common_code (
	code_type, code_key, code_name, code_name_en, code_value, use_yn, view_order, css_class, image
) values (
	'ISSUE_PRIORITY', 'ISSUE_PRIORITY_LEVEL4', '低', 'LEVEL4', 'LEVEL4', 'Y', 4, 'i4', ''
);

insert into common_code (
	code_type, code_key, code_name, code_name_en, code_value, use_yn, view_order, css_class, image
) values (
	'ISSUE_TYPE', 'ISSUE_TYPE_BUGGER', 'バグ', 'BUGGER', 'BUGGER', 'Y', 1, 't1', 'bugger'
);
insert into common_code (
	code_type, code_key, code_name, code_name_en, code_value, use_yn, view_order, css_class, image
) values (
	'ISSUE_TYPE', 'ISSUE_TYPE_IMPROVE', '改善', 'IMPROVE', 'IMPROVE', 'Y', 2, 't2', 'improve'
);
insert into common_code (
	code_type, code_key, code_name, code_name_en, code_value, use_yn, view_order, css_class, image
) values (
	'ISSUE_TYPE', 'ISSUE_TYPE_MODIFY', '修正', 'MODIFY', 'MODIFY', 'Y', 3, 't3', 'modify'
);
insert into common_code (
	code_type, code_key, code_name, code_name_en, code_value, use_yn, view_order, css_class, image
) values (
	'ISSUE_TYPE', 'ISSUE_TYPE_ETC', 'その他', 'ETC', 'ETC', 'Y', 4, 't4', 'etc'
);

insert into common_code (
	code_type, code_key, code_name, code_name_en, code_value, use_yn, view_order
) values (
	'ISSUE_STATUS', 'ISSUE_STATUS_INSERT', '登録', 'INSERT', 'INSERT', 'Y', 1
);
insert into common_code (
	code_type, code_key, code_name, code_name_en, code_value, use_yn, view_order
) values (
	'ISSUE_STATUS', 'ISSUE_STATUS_PROGRESS', '進行中', 'PROGRESS', 'PROGRESS', 'Y', 2
);
insert into common_code (
	code_type, code_key, code_name, code_name_en, code_value, use_yn, view_order
) values (
	'ISSUE_STATUS', 'ISSUE_STATUS_COMPLETE', '完了', 'COMPLETE', 'COMPLETE', 'Y', 3
);
insert into common_code (
	code_type, code_key, code_name, code_name_en, code_value, use_yn, view_order
) values (
	'ISSUE_STATUS', 'ISSUE_STATUS_REJECT', '伴侶', 'REJECT', 'REJECT', 'Y', 4
);
insert into common_code (
	code_type, code_key, code_name, code_name_en, code_value, use_yn, view_order
) values (
  	'DATA_REGISTER_TYPE', 'DATA_REGISTER_SELF', '管理者登録', 'ADMIN INSERT', 'SELF', 'Y', 1
);

insert into project(
	project_id, project_key, project_name, view_order, use_yn, latitude, longitude, height, duration
) values(
	nextval('project_seq'), '3ds', '3DS 統合可視化', '1', 'Y', '37.58210', '126.60856869381428', '550', 3
);
insert into project(
	project_id, project_key, project_name, view_order, use_yn, latitude, longitude, height, duration
) values(
	nextval('project_seq'), 'ifc_cultural_assets', 'IFC(Cultural Assets)', '2', 'Y', '37.57981', '126.97772995695296', '80', 3
);
insert into project(
	project_id, project_key, project_name, view_order, use_yn, latitude, longitude, height, duration
) values(
	nextval('project_seq'), 'ifc', 'IFC', '3', 'Y', '-62.2237', '-58.787', '270', 5
);
insert into project(
	project_id, project_key, project_name, view_order, use_yn, latitude, longitude, height, duration
) values(
	nextval('project_seq'), 'ifc_mep', 'IFC(MEP)', '4', 'Y', '37.6636', '126.738234', '150', 3
);
insert into project(
	project_id, project_key, project_name, view_order, use_yn, latitude, longitude, height, duration
) values(
	nextval('project_seq'), 'sea_port', 'Sea Port', '5', 'Y', '37.440778', '126.598426', '630', 3
);
insert into project(
	project_id, project_key, project_name, view_order, use_yn, latitude, longitude, height, duration
) values(
	nextval('project_seq'), 'collada', 'Collada 統合可視化', '6', 'Y', '37.567450', '126.7987', '320', 3
);
insert into project(
	project_id, project_key, project_name, view_order, use_yn, latitude, longitude, height, duration
) values(
	nextval('project_seq'), 'ifc_japan', 'IFC(Japan)', '7', 'Y', '35.6624', '139.6842', '320', 3
);
commit;

update policy set 
geo_init_latitude = '37.58199267183209',
geo_init_longitude = '126.60856869381428',
geo_init_height = '550',
geo_init_duration = 5,
geo_server_url = 'http://localhost:8081/geoserver/gaia3d/wms',
geo_server_layers = 'gaia3d:backgroundForSHI',
geo_server_parameters_service = 'WMS',
geo_server_parameters_version = '1.1.1',
geo_server_parameters_request = 'GetMap',
geo_server_parameters_transparent = 'true',
geo_server_parameters_format = 'image/png',
geo_callback_enable = 'true',
geo_callback_apiresult = 'showApiResult',
geo_callback_dataInfo = 'showDataInfo',
geo_callback_moveddata = 'showMovedData',
geo_callback_selectedobject = 'showSelectedObject',
geo_callback_insertissue = 'showInsertIssueLayer',
geo_callback_clickposition = 'showClickPosition';

commit;
