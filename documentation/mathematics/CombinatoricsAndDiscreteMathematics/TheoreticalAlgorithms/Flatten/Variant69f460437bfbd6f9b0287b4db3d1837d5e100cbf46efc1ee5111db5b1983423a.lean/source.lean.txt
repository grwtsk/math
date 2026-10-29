-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FlattenOperation.Variantc19080c94c5587b20495c088aef70d99036e3655a10a73a477cd0c9a057b59bf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c19080c94c5587b20495c088aef70d99036e3655a10a73a477cd0c9a057b59bf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.FlattenOperation.Variantc19080c94c5587b20495c088aef70d99036e3655a10a73a477cd0c9a057b59bf","mathematical_subject":"Computation.DataStructures","original_sha256":"c19080c94c5587b20495c088aef70d99036e3655a10a73a477cd0c9a057b59bf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/.quarentine/61026/.quarentine/formal/Formal/Checked/Projection/Flatten.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FlattenOperation.Variantc19080c94c5587b20495c088aef70d99036e3655a10a73a477cd0c9a057b59bf

namespace Formal.Checked.Projection.Flatten

inductive FlattenOperation where
  | replace
  | restrict
  | excise
  | collar
  | cap
  | graft
  | flow
  | surgeryCut
  | surgeryPaste
  | rollback
  | merge
  | replaceDefault
  deriving DecidableEq, Repr

structure LocalOverwrite (α : Type) where
  changedValue : α

def flattenValue {α : Type}
    (operation : FlattenOperation)
    (_inheritedValue : α)
    (overwrite : LocalOverwrite α) : α :=
  match operation with
  | .replace => overwrite.changedValue
  | .replaceDefault => overwrite.changedValue
  | .restrict => overwrite.changedValue
  | .excise => overwrite.changedValue
  | .collar => overwrite.changedValue
  | .cap => overwrite.changedValue
  | .graft => overwrite.changedValue
  | .flow => overwrite.changedValue
  | .surgeryCut => overwrite.changedValue
  | .surgeryPaste => overwrite.changedValue
  | .rollback => overwrite.changedValue
  | .merge => overwrite.changedValue

theorem localOverwriteFlatten_replace {α : Type}
    (inheritedValue : α)
    (overwrite : LocalOverwrite α) :
    flattenValue .replace inheritedValue overwrite = overwrite.changedValue := by
  rfl

theorem localOverwriteFlatten_restrict {α : Type}
    (inheritedValue : α)
    (overwrite : LocalOverwrite α) :
    flattenValue .restrict inheritedValue overwrite = overwrite.changedValue := by
  rfl

theorem localOverwriteFlatten_excise {α : Type}
    (inheritedValue : α)
    (overwrite : LocalOverwrite α) :
    flattenValue .excise inheritedValue overwrite = overwrite.changedValue := by
  rfl

theorem localOverwriteFlatten_collar {α : Type}
    (inheritedValue : α)
    (overwrite : LocalOverwrite α) :
    flattenValue .collar inheritedValue overwrite = overwrite.changedValue := by
  rfl

theorem localOverwriteFlatten_cap {α : Type}
    (inheritedValue : α)
    (overwrite : LocalOverwrite α) :
    flattenValue .cap inheritedValue overwrite = overwrite.changedValue := by
  rfl

theorem localOverwriteFlatten_graft {α : Type}
    (inheritedValue : α)
    (overwrite : LocalOverwrite α) :
    flattenValue .graft inheritedValue overwrite = overwrite.changedValue := by
  rfl

theorem localOverwriteFlatten_flow {α : Type}
    (inheritedValue : α)
    (overwrite : LocalOverwrite α) :
    flattenValue .flow inheritedValue overwrite = overwrite.changedValue := by
  rfl

theorem localOverwriteFlatten_surgeryCut {α : Type}
    (inheritedValue : α)
    (overwrite : LocalOverwrite α) :
    flattenValue .surgeryCut inheritedValue overwrite = overwrite.changedValue := by
  rfl

theorem localOverwriteFlatten_surgeryPaste {α : Type}
    (inheritedValue : α)
    (overwrite : LocalOverwrite α) :
    flattenValue .surgeryPaste inheritedValue overwrite = overwrite.changedValue := by
  rfl

theorem localOverwriteFlatten_rollback {α : Type}
    (inheritedValue : α)
    (overwrite : LocalOverwrite α) :
    flattenValue .rollback inheritedValue overwrite = overwrite.changedValue := by
  rfl

theorem localOverwriteFlatten_merge {α : Type}
    (inheritedValue : α)
    (overwrite : LocalOverwrite α) :
    flattenValue .merge inheritedValue overwrite = overwrite.changedValue := by
  rfl

theorem localOverwriteFlatten_replaceDefault {α : Type}
    (inheritedValue : α)
    (overwrite : LocalOverwrite α) :
    flattenValue .replaceDefault inheritedValue overwrite = overwrite.changedValue := by
  rfl

def repertoire : List FlattenOperation :=
  [ .replace
  , .restrict
  , .excise
  , .collar
  , .cap
  , .graft
  , .flow
  , .surgeryCut
  , .surgeryPaste
  , .rollback
  , .merge
  , .replaceDefault
  ]

theorem replace_is_default :
    repertoire.head? = some FlattenOperation.replace := by
  rfl

end Formal.Checked.Projection.Flatten
