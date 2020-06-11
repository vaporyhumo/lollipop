# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/git/all/git.rbi
#
# git-1.7.0

module Git
  def config(name = nil, value = nil); end
  def global_config(name = nil, value = nil); end
  def self.bare(git_dir, options = nil); end
  def self.clone(repository, name, options = nil); end
  def self.config; end
  def self.configure; end
  def self.export(repository, name, options = nil); end
  def self.global_config(name = nil, value = nil); end
  def self.init(working_dir = nil, options = nil); end
  def self.ls_remote(location = nil); end
  def self.open(working_dir, options = nil); end
end
class Git::Author
  def date; end
  def date=(arg0); end
  def email; end
  def email=(arg0); end
  def initialize(author_string); end
  def name; end
  def name=(arg0); end
end
class Git::Base
  def add(*args); end
  def add_remote(name, url, opts = nil); end
  def add_tag(name, *opts); end
  def apply(file); end
  def apply_mail(file); end
  def archive(treeish, file = nil, opts = nil); end
  def cat_file(objectish); end
  def chdir; end
  def checkout(branch = nil, opts = nil); end
  def checkout_file(version, file); end
  def checkout_index(opts = nil); end
  def clean(opts = nil); end
  def commit(message, opts = nil); end
  def commit_all(message, opts = nil); end
  def config(name = nil, value = nil); end
  def current_branch; end
  def delete_tag(name); end
  def describe(committish = nil, opts = nil); end
  def dir; end
  def each_conflict(&block); end
  def fetch(remote = nil, opts = nil); end
  def gc; end
  def grep(string, path_limiter = nil, opts = nil); end
  def index; end
  def initialize(options = nil); end
  def is_branch?(branch); end
  def is_local_branch?(branch); end
  def is_remote_branch?(branch); end
  def lib; end
  def ls_files(location = nil); end
  def ls_tree(objectish); end
  def merge(branch, message = nil); end
  def pull(remote = nil, branch = nil); end
  def push(remote = nil, branch = nil, opts = nil); end
  def read_tree(treeish, opts = nil); end
  def remotes; end
  def remove(path = nil, opts = nil); end
  def remove_remote(name); end
  def repack; end
  def repo; end
  def repo_size; end
  def reset(commitish = nil, opts = nil); end
  def reset_hard(commitish = nil, opts = nil); end
  def revert(commitish = nil, opts = nil); end
  def revparse(objectish); end
  def self.bare(git_dir, opts = nil); end
  def self.clone(repository, name, opts = nil); end
  def self.config; end
  def self.init(working_dir, opts = nil); end
  def self.open(working_dir, opts = nil); end
  def set_index(index_file, check = nil); end
  def set_remote_url(name, url); end
  def set_working(work_dir, check = nil); end
  def show(objectish = nil, path = nil); end
  def tags; end
  def update_ref(branch, commit); end
  def with_index(new_index); end
  def with_temp_index(&blk); end
  def with_temp_working(&blk); end
  def with_working(work_dir); end
  def write_and_commit_tree(opts = nil); end
  def write_tree; end
  include Git::Base::Factory
end
module Git::Base::Factory
  def branch(branch_name = nil); end
  def branches; end
  def commit_tree(tree = nil, opts = nil); end
  def diff(objectish = nil, obj2 = nil); end
  def gblob(objectish); end
  def gcommit(objectish); end
  def gtree(objectish); end
  def log(count = nil); end
  def merge_base(*args); end
  def object(objectish); end
  def remote(remote_name = nil); end
  def status; end
  def tag(tag_name); end
end
class Git::Path
  def initialize(path, check_path = nil); end
  def path; end
  def path=(arg0); end
  def readable?; end
  def to_s; end
  def writable?; end
end
class Git::Branch < Git::Path
  def archive(file, opts = nil); end
  def check_if_create; end
  def checkout; end
  def contains?(commit); end
  def create; end
  def current; end
  def delete; end
  def determine_current; end
  def full; end
  def full=(arg0); end
  def gcommit; end
  def in_branch(message = nil); end
  def initialize(base, name); end
  def merge(branch = nil, message = nil); end
  def name; end
  def name=(arg0); end
  def parse_name(name); end
  def remote; end
  def remote=(arg0); end
  def stashes; end
  def to_a; end
  def to_s; end
  def update_ref(commit); end
end
class Git::Branches
  def [](branch_name); end
  def each(&block); end
  def initialize(base); end
  def local; end
  def remote; end
  def size; end
  def to_s; end
  include Enumerable
end
class Git::Config
  def binary_path; end
  def binary_path=(arg0); end
  def git_ssh; end
  def git_ssh=(arg0); end
  def initialize; end
end
class Git::Diff
  def [](key); end
  def cache_full; end
  def cache_name_status; end
  def cache_stats; end
  def deletions; end
  def each(&block); end
  def from; end
  def initialize(base, from = nil, to = nil); end
  def insertions; end
  def lines; end
  def name_status; end
  def patch(file = nil); end
  def path(path); end
  def process_full; end
  def process_full_diff; end
  def size; end
  def stats; end
  def to; end
  def to_s(file = nil); end
  include Enumerable
end
class Git::Diff::DiffFile
  def binary?; end
  def blob(type = nil); end
  def dst; end
  def dst=(arg0); end
  def initialize(base, hash); end
  def mode; end
  def mode=(arg0); end
  def patch; end
  def patch=(arg0); end
  def path; end
  def path=(arg0); end
  def src; end
  def src=(arg0); end
  def type; end
  def type=(arg0); end
end
class Git::Index < Git::Path
end
class Git::GitExecuteError < StandardError
end
class Git::Lib
  def add(paths = nil, options = nil); end
  def apply(patch_file); end
  def apply_mail(patch_file); end
  def archive(sha, file = nil, opts = nil); end
  def best_guess_encoding; end
  def branch_contains(commit, branch_name = nil); end
  def branch_current; end
  def branch_delete(branch); end
  def branch_new(branch); end
  def branches_all; end
  def change_head_branch(branch_name); end
  def checkout(branch, opts = nil); end
  def checkout_file(version, file); end
  def checkout_index(opts = nil); end
  def clean(opts = nil); end
  def clone(repository, name, opts = nil); end
  def command(cmd, opts = nil, chdir = nil, redirect = nil, &block); end
  def command_lines(cmd, opts = nil, chdir = nil, redirect = nil); end
  def commit(message, opts = nil); end
  def commit_data(sha); end
  def commit_tree(tree, opts = nil); end
  def config_get(name); end
  def config_list; end
  def config_remote(name); end
  def config_set(name, value); end
  def conflicts; end
  def current_command_version; end
  def default_encoding; end
  def describe(committish = nil, opts = nil); end
  def detected_encoding(str); end
  def diff_as_hash(diff_command, opts = nil); end
  def diff_files; end
  def diff_full(obj1 = nil, obj2 = nil, opts = nil); end
  def diff_index(treeish); end
  def diff_name_status(reference1 = nil, reference2 = nil, opts = nil); end
  def diff_stats(obj1 = nil, obj2 = nil, opts = nil); end
  def encoding_options; end
  def escape(s); end
  def fetch(remote, opts); end
  def full_log_commits(opts = nil); end
  def full_tree(sha); end
  def gc; end
  def global_config_get(name); end
  def global_config_list; end
  def global_config_set(name, value); end
  def grep(string, opts = nil); end
  def ignored_files; end
  def init(opts = nil); end
  def initialize(base = nil, logger = nil); end
  def list_files(ref_dir); end
  def log_commits(opts = nil); end
  def log_common_options(opts); end
  def log_path_options(opts); end
  def ls_files(location = nil); end
  def ls_remote(location = nil); end
  def ls_tree(sha); end
  def meets_required_version?; end
  def merge(branch, message = nil); end
  def merge_base(*args); end
  def mv(file1, file2); end
  def namerev(string); end
  def normalize_encoding(str); end
  def object_contents(sha, &block); end
  def object_size(sha); end
  def object_type(sha); end
  def parse_config(file); end
  def parse_config_list(lines); end
  def process_commit_data(data, sha = nil, indent = nil); end
  def process_commit_log_data(data); end
  def process_tag_data(data, name, indent = nil); end
  def pull(remote = nil, branch = nil); end
  def push(remote, branch = nil, opts = nil); end
  def read_tree(treeish, opts = nil); end
  def remote_add(name, url, opts = nil); end
  def remote_remove(name); end
  def remote_set_url(name, url); end
  def remotes; end
  def remove(path = nil, opts = nil); end
  def repack; end
  def required_command_version; end
  def reset(commit, opts = nil); end
  def restore_git_system_env_variables; end
  def revert(commitish, opts = nil); end
  def revparse(string); end
  def run_command(git_cmd, &block); end
  def set_custom_git_env_variables; end
  def show(objectish = nil, path = nil); end
  def stash_apply(id = nil); end
  def stash_clear; end
  def stash_list; end
  def stash_save(message); end
  def stashes_all; end
  def store_git_system_env_variables; end
  def tag(name, *opts); end
  def tag_data(name); end
  def tag_sha(tag_name); end
  def tags; end
  def tree_depth(sha); end
  def unmerged; end
  def update_ref(branch, commit); end
  def with_custom_env_variables(&block); end
  def write_tree; end
end
class Git::Log
  def [](index); end
  def author(regex); end
  def between(sha1, sha2 = nil); end
  def check_log; end
  def dirty_log; end
  def each(&block); end
  def first; end
  def grep(regex); end
  def initialize(base, count = nil); end
  def last; end
  def object(objectish); end
  def path(path); end
  def run_log; end
  def since(date); end
  def size; end
  def skip(num); end
  def to_s; end
  def until(date); end
  include Enumerable
end
class Git::GitTagNameDoesNotExist < StandardError
end
class Git::Object
  def self.new(base, objectish, type = nil, is_tag = nil); end
end
class Git::Object::AbstractObject
  def archive(file = nil, opts = nil); end
  def blob?; end
  def commit?; end
  def contents(&block); end
  def contents_array; end
  def diff(objectish); end
  def grep(string, path_limiter = nil, opts = nil); end
  def initialize(base, objectish); end
  def log(count = nil); end
  def mode; end
  def mode=(arg0); end
  def objectish; end
  def objectish=(arg0); end
  def sha; end
  def size; end
  def size=(arg0); end
  def tag?; end
  def to_s; end
  def tree?; end
  def type; end
  def type=(arg0); end
end
class Git::Object::Blob < Git::Object::AbstractObject
  def blob?; end
  def initialize(base, sha, mode = nil); end
end
class Git::Object::Tree < Git::Object::AbstractObject
  def blobs; end
  def check_tree; end
  def children; end
  def depth; end
  def files; end
  def full_tree; end
  def initialize(base, sha, mode = nil); end
  def subdirectories; end
  def subtrees; end
  def tree?; end
  def trees; end
end
class Git::Object::Commit < Git::Object::AbstractObject
  def author; end
  def author_date; end
  def check_commit; end
  def commit?; end
  def committer; end
  def committer_date; end
  def date; end
  def diff_parent; end
  def gtree; end
  def initialize(base, sha, init = nil); end
  def message; end
  def name; end
  def parent; end
  def parents; end
  def set_commit(data); end
end
class Git::Object::Tag < Git::Object::AbstractObject
  def annotated?; end
  def check_tag; end
  def initialize(base, sha, name); end
  def message; end
  def name; end
  def name=(arg0); end
  def tag?; end
  def tagger; end
end
class Git::Remote < Git::Path
  def branch(branch = nil); end
  def fetch(opts = nil); end
  def fetch_opts; end
  def fetch_opts=(arg0); end
  def initialize(base, name); end
  def merge(branch = nil); end
  def name; end
  def name=(arg0); end
  def remove; end
  def to_s; end
  def url; end
  def url=(arg0); end
end
class Git::Repository < Git::Path
end
class Git::Status
  def [](file); end
  def added; end
  def added?(file); end
  def changed; end
  def changed?(file); end
  def construct_status; end
  def deleted; end
  def deleted?(file); end
  def each(&block); end
  def fetch_added; end
  def fetch_modified; end
  def fetch_untracked; end
  def initialize(base); end
  def pretty; end
  def pretty_file(file); end
  def untracked; end
  def untracked?(file); end
  include Enumerable
end
class Git::Status::StatusFile
  def blob(type = nil); end
  def initialize(base, hash); end
  def mode_index; end
  def mode_index=(arg0); end
  def mode_repo; end
  def mode_repo=(arg0); end
  def path; end
  def path=(arg0); end
  def sha_index; end
  def sha_index=(arg0); end
  def sha_repo; end
  def sha_repo=(arg0); end
  def stage; end
  def stage=(arg0); end
  def type; end
  def type=(arg0); end
  def untracked; end
  def untracked=(arg0); end
end
class Git::Stash
  def initialize(base, message, existing = nil); end
  def message; end
  def save; end
  def saved?; end
  def to_s; end
end
class Git::Stashes
  def [](index); end
  def all; end
  def apply(index = nil); end
  def clear; end
  def each(&block); end
  def initialize(base); end
  def save(message); end
  def size; end
  include Enumerable
end
class Git::WorkingDirectory < Git::Path
end