# Verification target: Local Ring Quotient Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ddc2aca79c8bcfb6799ffb7df9dee827f29a6fd",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variantcec50a9b8dd0edc516351f396a6da0569df6a7f981d8be33fd73361d83963654.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/LocalRingQuotientNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/LocalRingQuotientNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ddc2aca79c8bcfb6799ffb7df9dee827f29a6fd`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Quotient/Variantcec50a9b8dd0edc516351f396a6da0569df6a7f981d8be33fd73361d83963654.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Quotient/Variantcec50a9b8dd0edc516351f396a6da0569df6a7f981d8be33fd73361d83963654.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dimension.DivisionRing` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.PID` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.StrongRankCondition` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Artinian.Ring` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Over` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Index` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.ResidueField.Defs` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.RingHom.Basic` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nakayama` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [quotient_span_eq_top_iff_span_eq_top](../../../../CommutativeAlgebra/LocalRingQuotientNamespaced.lean/declarations/quotient-span-eq-top-iff-span-eq-top.md) | 40 | `result-track:2d9862eb5e5facde47c0d090781e6fa9613b3e593cddddef5e456638e847fda4` |
| 2 | `theorem` | [finrank_quotient_map](../../../../CommutativeAlgebra/LocalRingQuotientNamespaced.lean/declarations/finrank-quotient-map.md) | 69 | `result-track:0dc0ddacabc35b1a18c1931a4322c36ffbe569b7a01f25c597beb874b031e85b` |
| 3 | `def` | [basisQuotient](../../../../CommutativeAlgebra/LocalRingQuotientNamespaced.lean/declarations/basisquotient.md) | 91 | `declaration-track:f891683a1124cf15710e52881888fbacfac7d63a589b9d90dec1b494f916e153` |
| 4 | `lemma` | [basisQuotient_apply](../../../../CommutativeAlgebra/LocalRingQuotientNamespaced.lean/declarations/basisquotient-apply.md) | 98 | `result-track:7659f14405a78d16f8a0fa24d024f9bd79fb5ca11491d05fa1204711eed65dbe` |
| 5 | `lemma` | [basisQuotient_repr](../../../../CommutativeAlgebra/LocalRingQuotientNamespaced.lean/declarations/basisquotient-repr.md) | 103 | `result-track:9f0245caa0c92022cbb329267860308c1134dd53582d9564f708be5df401af8c` |
| 6 | `lemma` | [exists_maximalIdeal_pow_le_of_finite_quotient](../../../../CommutativeAlgebra/LocalRingQuotientNamespaced.lean/declarations/exists-maximalideal-pow-le-of-finite-quotient.md) | 117 | `result-track:2af2ba4920a874566ca905cfcc1db4332b6028421f0a627f78c1184771e26ac2` |
| 7 | `lemma` | [finite_quotient_iff](../../../../CommutativeAlgebra/LocalRingQuotientNamespaced.lean/declarations/finite-quotient-iff.md) | 133 | `result-track:e4125c1619c8869eee8f2f0fe087832e2c34b3c8ecd1fbc50c86af42346d37c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=04a49c85b2478db19503e213224c154b4dc477d357f8f7b0f62dcb03873c69c6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Quotient/Variantcec50a9b8dd0edc516351f396a6da0569df6a7f981d8be33fd73361d83963654.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Quotient/Variantcec50a9b8dd0edc516351f396a6da0569df6a7f981d8be33fd73361d83963654.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
