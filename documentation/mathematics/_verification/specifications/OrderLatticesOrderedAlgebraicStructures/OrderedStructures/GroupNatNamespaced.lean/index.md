# Verification target: Group Nat Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "421824cacce26a52489c1cec0bb63a95228ee873",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Nat/Variant2ac70e738c5d94c9ad472ed304d6bfb75ec3f5c4b1c3a82be73ebc66842b543a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupNatNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupNatNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `421824cacce26a52489c1cec0bb63a95228ee873`.

Source path: `GRWTSK/Algebra/GroupTheory/Nat/Variant2ac70e738c5d94c9ad472ed304d6bfb75ec3f5c4b1c3a82be73ebc66842b543a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Nat/Variant2ac70e738c5d94c9ad472ed304d6bfb75ec3f5c4b1c3a82be73ebc66842b543a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Nat.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Canonical.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Sub.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instIsOrderedAddMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupNatNamespaced.lean/declarations/instisorderedaddmonoid.md) | 30 | `declaration-track:ca08f8e885e311b790501c35a2d032b4a9a2c7a9345974e046c7a4334e69b0e5` |
| 2 | `instance` | [instIsOrderedCancelAddMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupNatNamespaced.lean/declarations/instisorderedcanceladdmonoid.md) | 33 | `declaration-track:5673eeb790ded7fe29d5877b9ee23beabe05343f433f4cfb9150b80b474fdaf2` |
| 3 | `instance` | [instCanonicallyOrderedAdd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupNatNamespaced.lean/declarations/instcanonicallyorderedadd.md) | 37 | `declaration-track:44c27c513a5ce4711e7c261bbc70c5868d0395d4ba3c492c05fb654d2347f58f` |
| 4 | `instance` | [instOrderedSub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupNatNamespaced.lean/declarations/instorderedsub.md) | 41 | `declaration-track:27e98d985b5b2af7e43b6320ead93ab4b5c0e970e1f3b684cbfef89c37c9c80e` |
| 5 | `lemma` | [pow_left_strictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupNatNamespaced.lean/declarations/pow-left-strictmono.md) | 52 | `result-track:32638ce5691b14bcbb53d3ce314e45587f014d83c3b93062c1f3b2d7452aef8a` |
| 6 | `lemma` | [Group Nat Namespaced](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupNatNamespaced.lean/declarations/nat-pow.md) | 55 | `result-track:f80df1777656211412f7eb697d3f1443cc20eddd133b36d7b04ef9f627512630` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c3f1993b69c7b67cb6a53ed7cc5898f311f0fcfd559850827b82c74028000cf9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Nat/Variant2ac70e738c5d94c9ad472ed304d6bfb75ec3f5c4b1c3a82be73ebc66842b543a.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Nat/Variant2ac70e738c5d94c9ad472ed304d6bfb75ec3f5c4b1c3a82be73ebc66842b543a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
