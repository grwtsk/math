# Verification target: Ring Hom Properties Namespaced Is Stable Under Base Change

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a46f3ef581e64c9df52560576ce6eb88a2349de",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingHomProperties/Variant7bf6c5264354f572904f8b3fd8929056f7c662e0aaa9b4a8d0a63538a717ff1b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/RingHomPropertiesNamespacedIsStableUnderBaseChange.lean/index.md) · [Full source](../../../../CommutativeAlgebra/RingHomPropertiesNamespacedIsStableUnderBaseChange.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a46f3ef581e64c9df52560576ce6eb88a2349de`.

Source path: `GRWTSK/Algebra/RingHomProperties/Variant7bf6c5264354f572904f8b3fd8929056f7c662e0aaa9b4a8d0a63538a717ff1b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingHomProperties/Variant7bf6c5264354f572904f8b3fd8929056f7c662e0aaa9b4a8d0a63538a717ff1b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Ring.Constructions` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Colimits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Iso` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Away.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IsTensorProduct` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [RespectsIso](../../../../CommutativeAlgebra/RingHomPropertiesNamespacedIsStableUnderBaseChange.lean/declarations/respectsiso.md) | 47 | `declaration-track:cf7c3f4eed3b380cfacb1fc9842a9bd1c27dd4d075365f2f0607cb7a105ed510` |
| 2 | `theorem` | [RespectsIso.cancel_left_isIso](../../../../CommutativeAlgebra/RingHomPropertiesNamespacedIsStableUnderBaseChange.lean/declarations/respectsiso-cancel-left-isiso.md) | 53 | `result-track:1cf1ef92ebdbffbc5931f24cdae97c4307c2ef73509860243e0512d2e3d3c933` |
| 3 | `theorem` | [RespectsIso.cancel_right_isIso](../../../../CommutativeAlgebra/RingHomPropertiesNamespacedIsStableUnderBaseChange.lean/declarations/respectsiso-cancel-right-isiso.md) | 59 | `result-track:374fd95b4fb70480cc2ff904ebc8fedfa6293083737b01ebb548f742319de08f` |
| 4 | `theorem` | [RespectsIso.isLocalization_away_iff](../../../../CommutativeAlgebra/RingHomPropertiesNamespacedIsStableUnderBaseChange.lean/declarations/respectsiso-islocalization-away-iff.md) | 66 | `result-track:faa11edd3a93f9c0c027f1dbee60ee09bedae53e5a167c357be0c0288b2d1ac6` |
| 5 | `lemma` | [RespectsIso.and](../../../../CommutativeAlgebra/RingHomPropertiesNamespacedIsStableUnderBaseChange.lean/declarations/respectsiso-and.md) | 97 | `result-track:2059b59563a05aa874921e2925a7c452987d6dd4ebeca37ea36dbb8761e7d5ba` |
| 6 | `def` | [StableUnderComposition](../../../../CommutativeAlgebra/RingHomPropertiesNamespacedIsStableUnderBaseChange.lean/declarations/stableundercomposition.md) | 112 | `declaration-track:7c2cc111d7a39e5c5f1da74863644b14a9d9e54a7bc51c9dd1b8afd653ffdec9` |
| 7 | `theorem` | [StableUnderComposition.respectsIso](../../../../CommutativeAlgebra/RingHomPropertiesNamespacedIsStableUnderBaseChange.lean/declarations/stableundercomposition-respectsiso.md) | 116 | `result-track:3ad8414aa763affb6228c01d1e9d00d276d94489ed1edb4e63ceef9017a8d473` |
| 8 | `lemma` | [StableUnderComposition.and](../../../../CommutativeAlgebra/RingHomPropertiesNamespacedIsStableUnderBaseChange.lean/declarations/stableundercomposition-and.md) | 127 | `result-track:4a443677b4994c77daa9d510dd193d62bc660498902abcc2e869f2a62c9a37a3` |
| 9 | `def` | [IsStableUnderBaseChange](../../../../CommutativeAlgebra/RingHomPropertiesNamespacedIsStableUnderBaseChange.lean/declarations/isstableunderbasechange.md) | 139 | `declaration-track:052de04964d1e3a8306938493fde1443d3c0ac1d2e96e87e08dd7c0806f2942a` |
| 10 | `theorem` | [IsStableUnderBaseChange.mk](../../../../CommutativeAlgebra/RingHomPropertiesNamespacedIsStableUnderBaseChange.lean/declarations/isstableunderbasechange-mk.md) | 145 | `result-track:b453109f7097194f27d1db83a7a6923c7a39378317167e76ba46bb0c641e4ea2` |
| 11 | `theorem` | [IsStableUnderBaseChange.pushout_inl](../../../../CommutativeAlgebra/RingHomPropertiesNamespacedIsStableUnderBaseChange.lean/declarations/isstableunderbasechange-pushout-inl.md) | 180 | `result-track:194bf16099d734ff111d01828b97bce36d41c1b870e39f0b09892c538f7d2741` |
| 12 | `lemma` | [IsStableUnderBaseChange.and](../../../../CommutativeAlgebra/RingHomPropertiesNamespacedIsStableUnderBaseChange.lean/declarations/isstableunderbasechange-and.md) | 192 | `result-track:a06888f0a03ade3b96d6faaee0642f607417fa8ed03c35ec3e8bc425bc87cc8b` |
| 13 | `def` | [toMorphismProperty](../../../../CommutativeAlgebra/RingHomPropertiesNamespacedIsStableUnderBaseChange.lean/declarations/tomorphismproperty.md) | 205 | `declaration-track:79f45a86d88f3032e27df653c65d0c63d6ed53c3cc85d94a5f6551b85853b11a` |
| 14 | `lemma` | [toMorphismProperty_respectsIso_iff](../../../../CommutativeAlgebra/RingHomPropertiesNamespacedIsStableUnderBaseChange.lean/declarations/tomorphismproperty-respectsiso-iff.md) | 207 | `result-track:3f9e79f6ac2cc839ff71913eba1a004c9fbf08527ab014bed8c00248149c5ec0` |
| 15 | `lemma` | [RespectsIso.arrow_mk_iso_iff](../../../../CommutativeAlgebra/RingHomPropertiesNamespacedIsStableUnderBaseChange.lean/declarations/respectsiso-arrow-mk-iso-iff.md) | 223 | `result-track:2a64e85bf72e4d4b2217d9f57d2244686bb252ae3480acbd528abf939644413a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=477b5ce968b541fa1423c397445582a953870fd296dbed311f601137913d76b3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/RingHomProperties/Variant7bf6c5264354f572904f8b3fd8929056f7c662e0aaa9b4a8d0a63538a717ff1b.lean","GRWTSK/_verification/specifications/Algebra/RingHomProperties/Variant7bf6c5264354f572904f8b3fd8929056f7c662e0aaa9b4a8d0a63538a717ff1b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
