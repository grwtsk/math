# Flatten — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `14c7e2fef9f6e70f95219932bd2fed8267d8613c` · SHA-256 `c19080c94c5587b20495c088aef70d99036e3655a10a73a477cd0c9a057b59bf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=922443028219380cf94aada5a791fc0b0bb06d4977d83413c62ba7addb424477 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variantc19080c94c5587b20495c088aef70d99036e3655a10a73a477cd0c9a057b59bf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
