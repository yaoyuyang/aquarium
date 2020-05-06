# This is an autogenerated file for dynamic methods in Code
# Please rerun bundle exec rake rails_rbi:models[Code] to regenerate.

# typed: strong
module Code::ActiveRelation_WhereNot
  sig { params(opts: T.untyped, rest: T.untyped).returns(T.self_type) }
  def not(opts, *rest); end
end

module Code::GeneratedAttributeMethods
  sig { returns(T.nilable(String)) }
  def content; end

  sig { params(value: T.nilable(T.any(String, Symbol))).void }
  def content=(value); end

  sig { returns(T::Boolean) }
  def content?; end
end

module Code::CustomFinderMethods
  sig { params(limit: Integer).returns(T::Array[Code]) }
  def first_n(limit); end

  sig { params(limit: Integer).returns(T::Array[Code]) }
  def last_n(limit); end

  sig { params(args: T::Array[T.any(Integer, String)]).returns(T::Array[Code]) }
  def find_n(*args); end

  sig { params(id: Integer).returns(T.nilable(Code)) }
  def find_by_id(id); end

  sig { params(id: Integer).returns(Code) }
  def find_by_id!(id); end
end

class Code < ActiveRecord::Base
  include Code::GeneratedAttributeMethods
  extend Code::CustomFinderMethods
  extend Code::QueryMethodsReturningRelation
  RelationType = T.type_alias { T.any(Code::ActiveRecord_Relation, Code::ActiveRecord_Associations_CollectionProxy, Code::ActiveRecord_AssociationRelation) }
end

module Code::QueryMethodsReturningRelation
  sig { returns(Code::ActiveRecord_Relation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(Code::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_Relation) }
  def select(*args); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_Relation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_Relation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_Relation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_Relation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_Relation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_Relation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_Relation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_Relation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_Relation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_Relation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_Relation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_Relation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_Relation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_Relation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_Relation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_Relation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_Relation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_Relation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_Relation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_Relation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_Relation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_Relation) }
  def except(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Code::ActiveRecord_Relation) }
  def extending(*args, &block); end
end

module Code::QueryMethodsReturningAssociationRelation
  sig { returns(Code::ActiveRecord_AssociationRelation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(Code::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_AssociationRelation) }
  def select(*args); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_AssociationRelation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_AssociationRelation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_AssociationRelation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_AssociationRelation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_AssociationRelation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_AssociationRelation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_AssociationRelation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_AssociationRelation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_AssociationRelation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_AssociationRelation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_AssociationRelation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_AssociationRelation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_AssociationRelation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_AssociationRelation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_AssociationRelation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_AssociationRelation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_AssociationRelation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_AssociationRelation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_AssociationRelation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_AssociationRelation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_AssociationRelation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(Code::ActiveRecord_AssociationRelation) }
  def except(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Code::ActiveRecord_AssociationRelation) }
  def extending(*args, &block); end
end

class Code::ActiveRecord_Relation < ActiveRecord::Relation
  include Code::ActiveRelation_WhereNot
  include Code::CustomFinderMethods
  include Code::QueryMethodsReturningRelation
  Elem = type_member(fixed: Code)
end

class Code::ActiveRecord_AssociationRelation < ActiveRecord::AssociationRelation
  include Code::ActiveRelation_WhereNot
  include Code::CustomFinderMethods
  include Code::QueryMethodsReturningAssociationRelation
  Elem = type_member(fixed: Code)
end

class Code::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  include Code::CustomFinderMethods
  include Code::QueryMethodsReturningAssociationRelation
  Elem = type_member(fixed: Code)

  sig { params(records: T.any(Code, T::Array[Code])).returns(T.self_type) }
  def <<(*records); end

  sig { params(records: T.any(Code, T::Array[Code])).returns(T.self_type) }
  def append(*records); end

  sig { params(records: T.any(Code, T::Array[Code])).returns(T.self_type) }
  def push(*records); end

  sig { params(records: T.any(Code, T::Array[Code])).returns(T.self_type) }
  def concat(*records); end
end
