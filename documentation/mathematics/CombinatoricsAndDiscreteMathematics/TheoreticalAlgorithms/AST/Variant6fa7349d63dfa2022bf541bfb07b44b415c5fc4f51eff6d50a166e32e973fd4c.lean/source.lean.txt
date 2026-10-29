-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AstNodeKind.Variant94cf471fe178a9a61e74a9aaafa7ce5b0ba2dbb6364403548ea19b161911c186","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"94cf471fe178a9a61e74a9aaafa7ce5b0ba2dbb6364403548ea19b161911c186","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.AstNodeKind.Variant94cf471fe178a9a61e74a9aaafa7ce5b0ba2dbb6364403548ea19b161911c186","mathematical_subject":"Computation.DataStructures","original_sha256":"94cf471fe178a9a61e74a9aaafa7ce5b0ba2dbb6364403548ea19b161911c186","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Meta/AST.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AstNodeKind.Variant94cf471fe178a9a61e74a9aaafa7ce5b0ba2dbb6364403548ea19b161911c186

namespace Surface

namespace Meta

inductive AstNodeKind where
  | project
  | module
  | namespace
  | declaration
  | structure
  | structureField
  | inductive
  | constructor
  | definition
  | theorem
  | proof
  | fixture
  | runtimeBinding
  | typeScriptBinding
  | webGpuView
  | paperReference
  | claimBoundary
  | htmlPage
  | context
  | morphism
  | baseChange
  | comparison
  | fiber
deriving DecidableEq, Repr

inductive TrustStatus where
  | trusted
  | generator
  | fixtureOnly
  | externalReference
  | notClaimed
deriving DecidableEq, Repr

inductive DependencyPrecision where
  | exact
  | conservative
  | manual
  | unknown
deriving DecidableEq, Repr

structure SourceRange where
  startLine : Nat
  startColumn : Nat
  endLine : Nat
  endColumn : Nat
deriving Repr

structure AstNode where
  id : String
  slug : String
  kind : AstNodeKind
  displayTitle : String
  sourcePath : String
  sourceRange? : Option SourceRange
  module? : Option String
  namespace? : Option String
  leanName? : Option String
  trustStatus : TrustStatus
  dependencies : List String
  fixtures : List String
  paperReferences : List String
  claimBoundaries : List String
  htmlPath : String
  contentHash : String
deriving Repr

structure AstEdge where
  fromId : String
  toId : String
  relation : String
  precision : DependencyPrecision
deriving Repr

structure ProjectAst where
  root : AstNode
  nodes : List AstNode
  edges : List AstEdge
deriving Repr

end Meta

end Surface
