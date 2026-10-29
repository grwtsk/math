-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ElementarySymbol.Variantf58d8e489105a129fde16d686217ed596f6deda21d241a4a2281e4a17608f85d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f58d8e489105a129fde16d686217ed596f6deda21d241a4a2281e4a17608f85d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ElementarySymbol.Variantf58d8e489105a129fde16d686217ed596f6deda21d241a4a2281e4a17608f85d","mathematical_subject":"Computation.DataStructures","original_sha256":"f58d8e489105a129fde16d686217ed596f6deda21d241a4a2281e4a17608f85d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/ElementaryCatalogue.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.EMLTree


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ElementarySymbol.Variantf58d8e489105a129fde16d686217ed596f6deda21d241a4a2281e4a17608f85d

namespace Surface.Legacy

inductive ElementarySymbol where
  | one
  | var
  | neg
  | inv
  | add
  | sub
  | mul
  | div
  | pow
  | exp
  | log
  | sqrt
  | sin
  | cos
  | tan
  | pi
  | e
  | I
deriving DecidableEq, Repr

def ElementarySymbol.name : ElementarySymbol -> String
  | .one => "one"
  | .var => "var"
  | .neg => "neg"
  | .inv => "inv"
  | .add => "add"
  | .sub => "sub"
  | .mul => "mul"
  | .div => "div"
  | .pow => "pow"
  | .exp => "exp"
  | .log => "log"
  | .sqrt => "sqrt"
  | .sin => "sin"
  | .cos => "cos"
  | .tan => "tan"
  | .pi => "pi"
  | .e => "e"
  | .I => "I"

def elementaryArity : ElementarySymbol -> Nat
  | .one => 0
  | .pi => 0
  | .e => 0
  | .I => 0
  | .var => 1
  | .neg => 1
  | .inv => 1
  | .exp => 1
  | .log => 1
  | .sqrt => 1
  | .sin => 1
  | .cos => 1
  | .tan => 1
  | .add => 2
  | .sub => 2
  | .mul => 2
  | .div => 2
  | .pow => 2

def targetElementaryBasis : List ElementarySymbol :=
  [.one, .var, .neg, .inv, .add, .sub, .mul, .div, .pow, .exp, .log,
   .sqrt, .sin, .cos, .tan, .pi, .e, .I]

def selectedElementaryBasis : List ElementarySymbol :=
  [.one, .var, .exp, .log]

theorem selected_subset_target :
    ∀ s, s ∈ selectedElementaryBasis -> s ∈ targetElementaryBasis := by
  intro s h
  simp [selectedElementaryBasis] at h
  rcases h with h | h | h | h
  · cases h
    simp [targetElementaryBasis]
  · cases h
    simp [targetElementaryBasis]
  · cases h
    simp [targetElementaryBasis]
  · cases h
    simp [targetElementaryBasis]

theorem selected_nodup : selectedElementaryBasis.Nodup := by
  decide

theorem target_nodup : targetElementaryBasis.Nodup := by
  decide

def emlOneTree : EMLTree 0 :=
  EMLTree.one

def emlVarTree : EMLTree 1 :=
  EMLTree.var 0

def emlExpTree : EMLTree 1 :=
  EMLTree.eml (EMLTree.var 0) EMLTree.one

def emlLogTree : EMLTree 1 :=
  EMLTree.eml
    EMLTree.one
    (EMLTree.eml
      (EMLTree.eml EMLTree.one (EMLTree.var 0))
      EMLTree.one)

end Surface.Legacy
