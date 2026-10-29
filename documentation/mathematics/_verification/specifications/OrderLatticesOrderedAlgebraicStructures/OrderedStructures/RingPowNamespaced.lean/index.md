# Verification target: Ring Pow Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4963936c3e86f6c3976c92562431e044f7000033",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Pow/Variantce612bd222edba2e57b15075e47a1d9bad94b1b0c379fa854d624b432d844143.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingPowNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingPowNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4963936c3e86f6c3976c92562431e044f7000033`.

Source path: `GRWTSK/Algebra/Pow/Variantce612bd222edba2e57b15075e47a1d9bad94b1b0c379fa854d624b432d844143.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Pow/Variantce612bd222edba2e57b15075e47a1d9bad94b1b0c379fa854d624b432d844143.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Cast.Commute` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Order.Ring` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [one_add_mul_le_pow'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingPowNamespaced.lean/declarations/one-add-mul-le-pow-source-edition-2.md) | 26 | `result-track:e5b6b883daac3ede337df091ac576866011dd3bc32845ad101595b6000641ea3` |
| 2 | `lemma` | [one_add_mul_le_pow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingPowNamespaced.lean/declarations/one-add-mul-le-pow.md) | 51 | `result-track:b0188766f7d606f0ee2a11c97a7b4c406b950903b4663071c92633b832e8e0d9` |
| 3 | `lemma` | [one_add_mul_sub_le_pow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingPowNamespaced.lean/declarations/one-add-mul-sub-le-pow.md) | 55 | `result-track:62d7f92eef68b366aea67bcd4bb634f085aaddfae25c182980ed4cb9ffb8d365` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b69df00175717300cffff7fb15505158a6403038ea93cda0d536926135bd13a5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Pow/Variantce612bd222edba2e57b15075e47a1d9bad94b1b0c379fa854d624b432d844143.lean","GRWTSK/_verification/specifications/Algebra/Pow/Variantce612bd222edba2e57b15075e47a1d9bad94b1b0c379fa854d624b432d844143.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
