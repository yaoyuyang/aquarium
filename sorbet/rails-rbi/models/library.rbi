# This is an autogenerated file for dynamic methods in Library
# Please rerun bundle exec rake rails_rbi:models[Library] to regenerate.

# typed: strong
module Library::ActiveRelation_WhereNot
  sig { params(opts: T.untyped, rest: T.untyped).returns(T.self_type) }
  def not(opts, *rest); end
end

module Library::GeneratedAttributeMethods
  sig { returns(String) }
  def category; end

  sig { params(value: T.any(String, Symbol)).void }
  def category=(value); end

  sig { returns(T::Boolean) }
  def category?; end
end

module Library::CustomFinderMethods
  sig { params(limit: Integer).returns(T::Array[Library]) }
  def first_n(limit); end

  sig { params(limit: Integer).returns(T::Array[Library]) }
  def last_n(limit); end

  sig { params(args: T::Array[T.any(Integer, String)]).returns(T::Array[Library]) }
  def find_n(*args); end

  sig { params(id: Integer).returns(T.nilable(Library)) }
  def find_by_id(id); end

  sig { params(id: Integer).returns(Library) }
  def find_by_id!(id); end
end

class Library < ActiveRecord::Base
  include Library::GeneratedAttributeMethods
  extend Library::CustomFinderMethods
  extend Library::QueryMethodsReturningRelation
  RelationType = T.type_alias { T.any(Library::ActiveRecord_Relation, Library::ActiveRecord_Associations_CollectionProxy, Library::ActiveRecord_AssociationRelation) }
end

module Library::QueryMethodsReturningRelation
  sig { returns(Library::ActiveRecord_Relation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(Library::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_Relation) }
  def select(*args); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_Relation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_Relation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_Relation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_Relation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_Relation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_Relation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_Relation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_Relation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_Relation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_Relation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_Relation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_Relation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_Relation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_Relation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_Relation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_Relation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_Relation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_Relation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_Relation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_Relation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_Relation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_Relation) }
  def except(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Library::ActiveRecord_Relation) }
  def extending(*args, &block); end
end

module Library::QueryMethodsReturningAssociationRelation
  sig { returns(Library::ActiveRecord_AssociationRelation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(Library::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_AssociationRelation) }
  def select(*args); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_AssociationRelation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_AssociationRelation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_AssociationRelation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_AssociationRelation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_AssociationRelation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_AssociationRelation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_AssociationRelation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_AssociationRelation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_AssociationRelation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_AssociationRelation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_AssociationRelation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_AssociationRelation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_AssociationRelation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_AssociationRelation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_AssociationRelation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_AssociationRelation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_AssociationRelation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_AssociationRelation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_AssociationRelation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_AssociationRelation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_AssociationRelation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(Library::ActiveRecord_AssociationRelation) }
  def except(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Library::ActiveRecord_AssociationRelation) }
  def extending(*args, &block); end
end

class Library::ActiveRecord_Relation < ActiveRecord::Relation
  include Library::ActiveRelation_WhereNot
  include Library::CustomFinderMethods
  include Library::QueryMethodsReturningRelation
  Elem = type_member(fixed: Library)
end

class Library::ActiveRecord_AssociationRelation < ActiveRecord::AssociationRelation
  include Library::ActiveRelation_WhereNot
  include Library::CustomFinderMethods
  include Library::QueryMethodsReturningAssociationRelation
  Elem = type_member(fixed: Library)
end

class Library::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  include Library::CustomFinderMethods
  include Library::QueryMethodsReturningAssociationRelation
  Elem = type_member(fixed: Library)

  sig { params(records: T.any(Library, T::Array[Library])).returns(T.self_type) }
  def <<(*records); end

  sig { params(records: T.any(Library, T::Array[Library])).returns(T.self_type) }
  def append(*records); end

  sig { params(records: T.any(Library, T::Array[Library])).returns(T.self_type) }
  def push(*records); end

  sig { params(records: T.any(Library, T::Array[Library])).returns(T.self_type) }
  def concat(*records); end
end
