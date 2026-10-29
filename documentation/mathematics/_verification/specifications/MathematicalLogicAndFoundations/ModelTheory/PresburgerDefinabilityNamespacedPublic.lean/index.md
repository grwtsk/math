# Verification target: Presburger Definability Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb4472520b8da73a5d334293ae7b7f44e70acb77",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant94c5485a2147ccee66de02d9c706fba221fbf2de9689780cce10035b2e9a0a25.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ModelTheory/PresburgerDefinabilityNamespacedPublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ModelTheory/PresburgerDefinabilityNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb4472520b8da73a5d334293ae7b7f44e70acb77`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant94c5485a2147ccee66de02d9c706fba221fbf2de9689780cce10035b2e9a0a25.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant94c5485a2147ccee66de02d9c706fba221fbf2de9689780cce10035b2e9a0a25.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.Finsupp` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Notation` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsLinearSet.definable](../../../../../MathematicalLogicAndFoundations/ModelTheory/PresburgerDefinabilityNamespacedPublic.lean/declarations/islinearset-definable.md) | 53 | `result-track:bedd0db5576fd5d67197e7723b8d6057dfbe77ca9da81653bedde202d5ab81ed` |
| 2 | `theorem` | [IsSemilinearSet.definable](../../../../../MathematicalLogicAndFoundations/ModelTheory/PresburgerDefinabilityNamespacedPublic.lean/declarations/issemilinearset-definable.md) | 72 | `result-track:ae4fffc30ce2ffce4bdb3f2803ffed38d0a37be99f535caa44f4a29558d22197` |
| 3 | `lemma` | [term_realize_eq_add_dotProduct](../../../../../MathematicalLogicAndFoundations/ModelTheory/PresburgerDefinabilityNamespacedPublic.lean/declarations/term-realize-eq-add-dotproduct.md) | 86 | `result-track:a124c9df4aba59b26183796f83cac734826fb9702014fa8ff9b1f6325de967bb` |
| 4 | `lemma` | [isSemilinearSet_boundedFormula_realize](../../../../../MathematicalLogicAndFoundations/ModelTheory/PresburgerDefinabilityNamespacedPublic.lean/declarations/issemilinearset-boundedformula-realize.md) | 120 | `result-track:415fe36b1f055c1ffcf635cf3a7ee5b059efcf6c142c885db2310c82adc8ab17` |
| 5 | `lemma` | [isSemilinearSet_formula_realize_semilinear](../../../../../MathematicalLogicAndFoundations/ModelTheory/PresburgerDefinabilityNamespacedPublic.lean/declarations/issemilinearset-formula-realize-semilinear.md) | 146 | `result-track:175bfc2e66b1e8a5c889234edfed1b455d027e5365bf223172dc9ac5c8663d2a` |
| 6 | `theorem` | [definable_iff_isSemilinearSet](../../../../../MathematicalLogicAndFoundations/ModelTheory/PresburgerDefinabilityNamespacedPublic.lean/declarations/definable-iff-issemilinearset.md) | 156 | `result-track:4fd3182f672573aa2cf9f0374879817e2856f42cb660c27694aff23cdaf8e50b` |
| 7 | `theorem` | [definable₁_iff_ultimately_periodic](../../../../../MathematicalLogicAndFoundations/ModelTheory/PresburgerDefinabilityNamespacedPublic.lean/declarations/definable-iff-ultimately-periodic.md) | 162 | `result-track:adcffa979b5c038185ed6400e12530b982b547818180cb12689f39dfbb424d0a` |
| 8 | `theorem` | [mul_not_definable](../../../../../MathematicalLogicAndFoundations/ModelTheory/PresburgerDefinabilityNamespacedPublic.lean/declarations/mul-not-definable.md) | 170 | `result-track:b5760434fc1317ab92bd1e97b067fcfa19732958d20039e773fde3076d90aa2c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=68a5e08406a30f20e110ede709d08cd7f567163cc57b1f0a16eba17112654952 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant94c5485a2147ccee66de02d9c706fba221fbf2de9689780cce10035b2e9a0a25.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant94c5485a2147ccee66de02d9c706fba221fbf2de9689780cce10035b2e9a0a25.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
