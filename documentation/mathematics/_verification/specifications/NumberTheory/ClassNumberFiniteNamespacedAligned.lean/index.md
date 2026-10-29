# Verification target: Class Number Finite Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9cc7a6a53cd3f4b63f5d85630775cfbc71388b5e",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Finite/Variantbdc2d67a240b8a1530a641db0049c13f76f8842d4fe336d281caa14206288f27.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/ClassNumberFiniteNamespacedAligned.lean/index.md) · [Full source](../../../../NumberTheory/ClassNumberFiniteNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9cc7a6a53cd3f4b63f5d85630775cfbc71388b5e`.

Source path: `GRWTSK/Algebra/Finite/Variantbdc2d67a240b8a1530a641db0049c13f76f8842d4fe336d281caa14206288f27.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Finite/Variantbdc2d67a240b8a1530a641db0049c13f76f8842d4fe336d281caa14206288f27.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.PID` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.AbsoluteValue` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ClassNumber.AdmissibleAbsoluteValue` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.ClassGroup` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.IntegralClosure` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normBound](../../../../NumberTheory/ClassNumberFiniteNamespacedAligned.lean/declarations/normbound.md) | 67 | `declaration-track:73ba7e81d5b83785c8cf8fb6cf919ac8ea0eaabffa6feb9702a201795a5dc4ce` |
| 2 | `theorem` | [normBound_pos](../../../../NumberTheory/ClassNumberFiniteNamespacedAligned.lean/declarations/normbound-pos.md) | 78 | `result-track:c4f20d0a1e8149c9e2461e55709297e66b9b57e250d64a87abb805234549f6a6` |
| 3 | `theorem` | [norm_le](../../../../NumberTheory/ClassNumberFiniteNamespacedAligned.lean/declarations/norm-le.md) | 96 | `result-track:b486665154ec154e2424d1ce2f92bdf801916d083df84aa15331d1808852c773` |
| 4 | `theorem` | [norm_lt](../../../../NumberTheory/ClassNumberFiniteNamespacedAligned.lean/declarations/norm-lt.md) | 119 | `result-track:a90ecb5a712c04deea4feff13f016db28c131c700d1ab7515258774e756ee48c` |
| 5 | `theorem` | [exists_min](../../../../NumberTheory/ClassNumberFiniteNamespacedAligned.lean/declarations/exists-min.md) | 148 | `result-track:1b31f0f5db3deb66af54a929c8b9a5b5db6c74ac88f03b28c96f466bdc3fc4af` |
| 6 | `def` | [cardM](../../../../NumberTheory/ClassNumberFiniteNamespacedAligned.lean/declarations/cardm.md) | 179 | `declaration-track:96338e2ec342d0dc1243bf04af9ccf2f8ac4147ae7139f54b4d06d0ac8808b23` |
| 7 | `def` | [distinctElems](../../../../NumberTheory/ClassNumberFiniteNamespacedAligned.lean/declarations/distinctelems.md) | 187 | `declaration-track:44264fd6cbad2a19972927201feaf39ae5ffec44d5f7e2c7e7513f261b88e84d` |
| 8 | `def` | [finsetApprox](../../../../NumberTheory/ClassNumberFiniteNamespacedAligned.lean/declarations/finsetapprox.md) | 195 | `declaration-track:985cbd3eb21939021b6c2f8c000cc0f5ca7babe537ffc68cfb68dbf94e2e937f` |
| 9 | `theorem` | [finsetApprox.zero_not_mem](../../../../NumberTheory/ClassNumberFiniteNamespacedAligned.lean/declarations/finsetapprox-zero-not-mem.md) | 200 | `result-track:53a24e3244ceafdea90a4232b290dabb946151b08498bcb18cfa41c6fc8aa92d` |
| 10 | `theorem` | [mem_finsetApprox](../../../../NumberTheory/ClassNumberFiniteNamespacedAligned.lean/declarations/mem-finsetapprox.md) | 205 | `result-track:1d3a0c8ab1a1702ed44faf608297042d285698b0a698dac0b65fdcc46cf88b81` |
| 11 | `theorem` | [exists_mem_finsetApprox](../../../../NumberTheory/ClassNumberFiniteNamespacedAligned.lean/declarations/exists-mem-finsetapprox.md) | 228 | `result-track:9762948dad0dca45ccd4432d09021241fce206a0ef72673807968a401ab61762` |
| 12 | `theorem` | [exists_mem_finset_approx'](../../../../NumberTheory/ClassNumberFiniteNamespacedAligned.lean/declarations/exists-mem-finset-approx.md) | 282 | `result-track:45b1ab58d6e99e02200782b10a823c200046a69b18aaa777bcc03658d8b86056` |
| 13 | `theorem` | [prod_finsetApprox_ne_zero](../../../../NumberTheory/ClassNumberFiniteNamespacedAligned.lean/declarations/prod-finsetapprox-ne-zero.md) | 304 | `result-track:c85b61ae64f97b7aae9de5f2d59ffa87bcf9466e15490df479c009206317af99` |
| 14 | `theorem` | [ne_bot_of_prod_finsetApprox_mem](../../../../NumberTheory/ClassNumberFiniteNamespacedAligned.lean/declarations/ne-bot-of-prod-finsetapprox-mem.md) | 311 | `result-track:94d31e93714d8c7076f0bd2e362102b0f45760524a51339db53451661a1faa61` |
| 15 | `theorem` | [exists_mk0_eq_mk0](../../../../NumberTheory/ClassNumberFiniteNamespacedAligned.lean/declarations/exists-mk0-eq-mk0.md) | 318 | `result-track:817eb763f01fb2061f0ecec9b255404e52692136a5ee16b08b2de85812a71cca` |
| 16 | `def` | [mkMMem](../../../../NumberTheory/ClassNumberFiniteNamespacedAligned.lean/declarations/mkmmem.md) | 356 | `declaration-track:c20c1203f981f70c38dc855982c33d27a9c67f8dd9656dc0d593dae192c29ddd` |
| 17 | `theorem` | [mkMMem_surjective](../../../../NumberTheory/ClassNumberFiniteNamespacedAligned.lean/declarations/mkmmem-surjective.md) | 363 | `result-track:83be501644dd3d8552e438af26108ffcfb6d4e641901d02cf99744c4b8240026` |
| 18 | `def` | [fintypeOfAdmissibleOfAlgebraic](../../../../NumberTheory/ClassNumberFiniteNamespacedAligned.lean/declarations/fintypeofadmissibleofalgebraic.md) | 380 | `declaration-track:784ce6b04a2e599a44916983cac43cb89d02a4fbadb7444def187a66c697ef57` |
| 19 | `def` | [fintypeOfAdmissibleOfFinite](../../../../NumberTheory/ClassNumberFiniteNamespacedAligned.lean/declarations/fintypeofadmissibleoffinite.md) | 402 | `declaration-track:d4a2db17a6a440bbd9ddefac520d4256009bafdaff42f24cb8ce1b2337649f50` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e27cefb3fb9cf333ea068701d58a7d483870717a37c315f3043a5377fd02aa48 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Finite/Variantbdc2d67a240b8a1530a641db0049c13f76f8842d4fe336d281caa14206288f27.lean","GRWTSK/_verification/specifications/Algebra/Finite/Variantbdc2d67a240b8a1530a641db0049c13f76f8842d4fe336d281caa14206288f27.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
