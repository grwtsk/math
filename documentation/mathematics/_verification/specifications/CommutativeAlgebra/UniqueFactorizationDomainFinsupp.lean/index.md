# Verification target: Unique Factorization Domain Finsupp

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a901b3c83b1a344db6d7e0a94f91aa3f91dc60b6",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finsupp/Variantd6b03db3edc5bc83dc15518b2e401929bdea0c39751b8dde09c7f8c5f39dbe5a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/UniqueFactorizationDomainFinsupp.lean/index.md) · [Full source](../../../../CommutativeAlgebra/UniqueFactorizationDomainFinsupp.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a901b3c83b1a344db6d7e0a94f91aa3f91dc60b6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finsupp/Variantd6b03db3edc5bc83dc15518b2e401929bdea0c39751b8dde09c7f8c5f39dbe5a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finsupp/Variantd6b03db3edc5bc83dc15518b2e401929bdea0c39751b8dde09c7f8c5f39dbe5a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Multiset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.NormalizedFactors` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [factorization](../../../../CommutativeAlgebra/UniqueFactorizationDomainFinsupp.lean/declarations/factorization.md) | 28 | `declaration-track:fc1a45180b8850047b77596ad20a92e8a72f2e24519fd5df93f3682f00f2e0db` |
| 2 | `theorem` | [factorization_eq_count](../../../../CommutativeAlgebra/UniqueFactorizationDomainFinsupp.lean/declarations/factorization-eq-count.md) | 31 | `result-track:960afbc91c911dd559d37415c41a31ae36e5fc897fec7bc468c7d204024e334b` |
| 3 | `theorem` | [factorization_zero](../../../../CommutativeAlgebra/UniqueFactorizationDomainFinsupp.lean/declarations/factorization-zero.md) | 35 | `result-track:49588f50012a1560f19dc5f2ad71a273b57f7c4ecf15b87c9dc6f57640f47262` |
| 4 | `theorem` | [factorization_one](../../../../CommutativeAlgebra/UniqueFactorizationDomainFinsupp.lean/declarations/factorization-one.md) | 38 | `result-track:be74fef67a4059e2de1f83ea45760a1cabcb0e8c542e92c5e280f89349b6ad7e` |
| 5 | `theorem` | [support_factorization](../../../../CommutativeAlgebra/UniqueFactorizationDomainFinsupp.lean/declarations/support-factorization.md) | 42 | `result-track:7f06ba2ce1d6d70e08b1b994c3da12c57f2aaced3b2802fbdd4236e2f99d51fe` |
| 6 | `theorem` | [factorization_mul](../../../../CommutativeAlgebra/UniqueFactorizationDomainFinsupp.lean/declarations/factorization-mul.md) | 48 | `result-track:8a79b0b651004e97bc636c6812f4de918257b9882266c1601d5a82842c3490ef` |
| 7 | `theorem` | [factorization_pow](../../../../CommutativeAlgebra/UniqueFactorizationDomainFinsupp.lean/declarations/factorization-pow.md) | 53 | `result-track:2d892fce82be757326718508851de49b2d03687e279f02598a6acc3b96b6ba9f` |
| 8 | `theorem` | [associated_of_factorization_eq](../../../../CommutativeAlgebra/UniqueFactorizationDomainFinsupp.lean/declarations/associated-of-factorization-eq.md) | 57 | `result-track:7ff268ad1f9fb1ed122ce43484892f9a24617912595398f46f6004f298beab95` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d0ccb5210d03a9ba1da6b2440d99f95a6c05e569caec91658aa00e0e0e958098 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Finsupp/Variantd6b03db3edc5bc83dc15518b2e401929bdea0c39751b8dde09c7f8c5f39dbe5a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Finsupp/Variantd6b03db3edc5bc83dc15518b2e401929bdea0c39751b8dde09c7f8c5f39dbe5a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
