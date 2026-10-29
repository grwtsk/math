# Verification target: Special

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "564fc6f68eb65213896dd1733137e74007027fd4",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Special/Variant574dde0205730b7e062933488b56fa2d43aad3750e643d0028d55cd8dc1b8873.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/Special.lean/index.md) · [Full source](../../../../CommutativeAlgebra/Special.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `564fc6f68eb65213896dd1733137e74007027fd4`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Special/Variant574dde0205730b7e062933488b56fa2d43aad3750e643d0028d55cd8dc1b8873.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Special/Variant574dde0205730b7e062933488b56fa2d43aad3750e643d0028d55cd8dc1b8873.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.TaylorModel.Core` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [erfCoeff_lo](../../../../CommutativeAlgebra/Special.lean/declarations/erfcoeff-lo.md) | 39 | `declaration-track:106d22dd97e879ed6f71db46cd0463e9f9033c506c865956639a17820bfb6883` |
| 2 | `def` | [erfCoeff_hi](../../../../CommutativeAlgebra/Special.lean/declarations/erfcoeff-hi.md) | 42 | `declaration-track:5b69123283532895937db4cb291b1e79832557ac17c8f4f14c13169647755a26` |
| 3 | `def` | [erfTaylorCoeffs](../../../../CommutativeAlgebra/Special.lean/declarations/erftaylorcoeffs.md) | 46 | `declaration-track:41eaceec38777ea45a28fddcf787019ff35be95b4ad90533aa8061a9662e4517` |
| 4 | `def` | [erfTaylorPoly](../../../../CommutativeAlgebra/Special.lean/declarations/erftaylorpoly.md) | 56 | `declaration-track:52fc7f779e34ca379e84172f7f55d81b250d175dd6a6b79e6553d87cf6175fe8` |
| 5 | `def` | [erfRemainderBound](../../../../CommutativeAlgebra/Special.lean/declarations/erfremainderbound.md) | 61 | `declaration-track:689550e0f27dc20df651a2f3c3ee9e5af9bafa75c2bd298282c200581e7ba115` |
| 6 | `theorem` | [erfRemainderBound_nonneg](../../../../CommutativeAlgebra/Special.lean/declarations/erfremainderbound-nonneg.md) | 70 | `result-track:1ca328bc8fcac6b93815111983d645c5ecd80a5f2719ecd0b3ea97aa9d2d94cb` |
| 7 | `def` | [tmErf](../../../../CommutativeAlgebra/Special.lean/declarations/tmerf.md) | 85 | `declaration-track:b5662efc2e8401e86a33d0daac194ac6273d13c5aa25b9a1b2ff1b8abf1008a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=546b458731c7968e280b85609bf262f962c8e42ab6806c23666fdea48fa5bc0b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Special/Variant574dde0205730b7e062933488b56fa2d43aad3750e643d0028d55cd8dc1b8873.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Special/Variant574dde0205730b7e062933488b56fa2d43aad3750e643d0028d55cd8dc1b8873.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
