# Verification target: Multiset Lemmas Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe4ee7c643610a160d3447283e414f93a1677aed",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variant52fa287473806483b10d778d95a30d760bb8b09727f7868d09e7eccaa8036bcd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MultisetLemmasNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MultisetLemmasNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe4ee7c643610a160d3447283e414f93a1677aed`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variant52fa287473806483b10d778d95a30d760bb8b09727f7868d09e7eccaa8036bcd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Lemmas/Variant52fa287473806483b10d778d95a30d760bb8b09727f7868d09e7eccaa8036bcd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.BigOperators.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Multiset.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dvd_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MultisetLemmasNamespaced.lean/declarations/dvd-prod.md) | 26 | `result-track:3b07bd132990f8c640214d9d541944cc902f4763c8d94060abfffeb673c0fe5a` |
| 2 | `theorem` | [prod_eq_one_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MultisetLemmasNamespaced.lean/declarations/prod-eq-one-iff.md) | 31 | `result-track:fbe276848a869ef79883443c30e85002276052e6cee183b0ec60ce1463458db8` |
| 3 | `lemma` | [CanonicallyOrderedCommSemiring.multiset_prod_pos](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MultisetLemmasNamespaced.lean/declarations/canonicallyorderedcommsemiring-multiset-prod-pos.md) | 40 | `result-track:1a32ae7879e65bb5f446b07b4df1ac9af17eeeb096ff060efdb3f7a7cde2668a` |
| 4 | `theorem` | [multiset_sum_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MultisetLemmasNamespaced.lean/declarations/multiset-sum-right.md) | 52 | `result-track:8bf9e20ab853027194c61a221e99dd7389899ad454f2a2f2e859fc341c832a1a` |
| 5 | `theorem` | [multiset_sum_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MultisetLemmasNamespaced.lean/declarations/multiset-sum-left.md) | 58 | `result-track:4463235623157b91f917ab27927b9ca3283bb08e941e1bb7896ff7eece8b7f62` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fcf75f0fcb06e7760dbe10960a655da4f28aa287f79fa842df8b10f9e9bf6a0a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variant52fa287473806483b10d778d95a30d760bb8b09727f7868d09e7eccaa8036bcd.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Lemmas/Variant52fa287473806483b10d778d95a30d760bb8b09727f7868d09e7eccaa8036bcd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
