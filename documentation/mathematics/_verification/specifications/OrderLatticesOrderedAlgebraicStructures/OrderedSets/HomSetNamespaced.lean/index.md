# Verification target: Hom Set Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1656ffb603fb9080656ce09466dffa719ac41ac",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant537c79f0d59702225c7c5f6666f3d95f3e4ff5687181ebefe876f3cc96e492d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomSetNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomSetNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1656ffb603fb9080656ce09466dffa719ac41ac`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant537c79f0d59702225c7c5f6666f3d95f3e4ff5687181ebefe876f3cc96e492d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant537c79f0d59702225c7c5f6666f3d95f3e4ff5687181ebefe876f3cc96e492d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Hom.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Set` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Image` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [range_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomSetNamespaced.lean/declarations/range-eq.md) | 35 | `result-track:249da511ae7f0f2fa1259651244c58e0c73935df64d36bc8a575c96b97dbf693` |
| 2 | `theorem` | [symm_image_image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomSetNamespaced.lean/declarations/symm-image-image.md) | 40 | `result-track:d67495901206ecb02f1404f5c5241d863801bcbf80946c51760ad388eedba932` |
| 3 | `theorem` | [image_symm_image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomSetNamespaced.lean/declarations/image-symm-image.md) | 45 | `result-track:77ef24cb4f297a50498f475ff7520ffce284dcc54be61afccb6ca73183912305` |
| 4 | `theorem` | [image_eq_preimage](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomSetNamespaced.lean/declarations/image-eq-preimage.md) | 49 | `result-track:1e8d6235391117d0754b6c76c69eab42840d28779e2f77f7bcf0e29662bc2edc` |
| 5 | `theorem` | [preimage_symm_preimage](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomSetNamespaced.lean/declarations/preimage-symm-preimage.md) | 54 | `result-track:cf454d5b507dc1a1318c4a4cc612baeccc793c2e9243e3f9ef1b2dec8cf1c2e1` |
| 6 | `theorem` | [symm_preimage_preimage](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomSetNamespaced.lean/declarations/symm-preimage-preimage.md) | 59 | `result-track:4a5baa9becbbde1cdcbbb8bd8397aba9ee64823b9ff4b32e8eefbcd2362c17f3` |
| 7 | `theorem` | [image_preimage](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomSetNamespaced.lean/declarations/image-preimage.md) | 64 | `result-track:a0450732f627acf49f8361588cd3d8538c41d52916ecb401ad3180ac22fc55dd` |
| 8 | `theorem` | [preimage_image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomSetNamespaced.lean/declarations/preimage-image.md) | 69 | `result-track:0014bb9d58abcdcabc9b14a867ae9fc4c5d50a5201b6631caf260c0c72c5ee64` |
| 9 | `def` | [setCongr](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomSetNamespaced.lean/declarations/setcongr.md) | 80 | `declaration-track:a8fd9fb61c63bce5d3e6c72d7203b94f9708618bbc998707d7ed7ee874d3ae15` |
| 10 | `def` | [Set.univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomSetNamespaced.lean/declarations/set-univ.md) | 87 | `declaration-track:7a966972b858768e0b5eb93c4ecbbfb2d9d2aaaaad115efb659c699d7486d732` |
| 11 | `def` | [StrictMonoOn.orderIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomSetNamespaced.lean/declarations/strictmonoon-orderiso.md) | 97 | `declaration-track:8f6021c81941da9780c757a73c384dbe8d5748689f97599048510f462619caaa` |
| 12 | `def` | [orderIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomSetNamespaced.lean/declarations/orderiso.md) | 113 | `declaration-track:ba6cdc001cb224826aeac02b14cf292089775b3cefd2cdb028b9a16567f10a9b` |
| 13 | `def` | [orderIsoOfSurjective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomSetNamespaced.lean/declarations/orderisoofsurjective.md) | 121 | `declaration-track:1a73ab4a5f19e040c6f828ab3c851c6b56abc45787c653c703e72fed2a2043a1` |
| 14 | `theorem` | [coe_orderIsoOfSurjective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomSetNamespaced.lean/declarations/coe-orderisoofsurjective.md) | 127 | `result-track:bc4ad8af215e053e3f97cb8ecdd496f1954d87c7b725971537d015494d1000c2` |
| 15 | `theorem` | [orderIsoOfSurjective_symm_apply_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomSetNamespaced.lean/declarations/orderisoofsurjective-symm-apply-self.md) | 132 | `result-track:b9cd4d2988f43dc50ae945c6b8dfebbf2b1be47d26e14c236f1120673569160d` |
| 16 | `theorem` | [orderIsoOfSurjective_self_symm_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomSetNamespaced.lean/declarations/orderisoofsurjective-self-symm-apply.md) | 137 | `result-track:ec8eb34ad92e74c2c6e1b1c971df12a415babaac6c4b550ee2cf26cfeea89f19` |
| 17 | `def` | [OrderIso.compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomSetNamespaced.lean/declarations/orderiso-compl.md) | 150 | `declaration-track:ca91c26224a8bc5c853c7debf61bafccceec1b5ca77fc7cc41f560ed979be26c` |
| 18 | `theorem` | [compl_strictAnti](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomSetNamespaced.lean/declarations/compl-strictanti.md) | 160 | `result-track:f659fe919d2d199e0c89493f750c2b5c858299673252f78830ee4ac4e4de785e` |
| 19 | `theorem` | [compl_antitone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomSetNamespaced.lean/declarations/compl-antitone.md) | 164 | `result-track:07971a0a360f1253ae9c51bc7c1a555e90fdbfae52105435c5a05c0d63e9cef7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=089b0a2d949ae3526e6f6a332d660fbed2a244dcb4a06c0a5a851464ade73707 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant537c79f0d59702225c7c5f6666f3d95f3e4ff5687181ebefe876f3cc96e492d3.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant537c79f0d59702225c7c5f6666f3d95f3e4ff5687181ebefe876f3cc96e492d3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
