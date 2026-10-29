# Verification target: Class Number Finite Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0da9f25d262598f1d5195f996525f501496fc1f",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Finite/Variantbddd4113dd8006b4e8f7e6ef5a0981ced9b6d67f65bd10f5b2fbdf34e3c317a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/ClassNumberFiniteNamespaced.lean/index.md) · [Full source](../../../../NumberTheory/ClassNumberFiniteNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0da9f25d262598f1d5195f996525f501496fc1f`.

Source path: `GRWTSK/Algebra/Finite/Variantbddd4113dd8006b4e8f7e6ef5a0981ced9b6d67f65bd10f5b2fbdf34e3c317a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Finite/Variantbddd4113dd8006b4e8f7e6ef5a0981ced9b6d67f65bd10f5b2fbdf34e3c317a5.lean.json)

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
- `Mathlib.RingTheory.Norm.Basic` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normBound](../../../../NumberTheory/ClassNumberFiniteNamespaced.lean/declarations/normbound.md) | 53 | `declaration-track:50b2c73f3d393f1c73e7a1137172f83df44ec43c70a850ee4759bb744f379a7f` |
| 2 | `theorem` | [normBound_pos](../../../../NumberTheory/ClassNumberFiniteNamespaced.lean/declarations/normbound-pos.md) | 63 | `result-track:9b6181c8e7665ebc70a66cb93b9ccf21bcf31273d32ab963f44baf4ba82d0a3b` |
| 3 | `theorem` | [norm_le](../../../../NumberTheory/ClassNumberFiniteNamespaced.lean/declarations/norm-le.md) | 80 | `result-track:c54653192983edf407307526cb69be6313ad79ed6f67c7ba8bca61fd832752b6` |
| 4 | `theorem` | [norm_lt](../../../../NumberTheory/ClassNumberFiniteNamespaced.lean/declarations/norm-lt.md) | 94 | `result-track:9e7d065502ca5cc306c4368cb5d3fd89ef45ba0ac270d5e4c3b1ca58504e5247` |
| 5 | `theorem` | [exists_min](../../../../NumberTheory/ClassNumberFiniteNamespaced.lean/declarations/exists-min.md) | 121 | `result-track:665ea754f2c8ca1c1e517433aef23eef782ac8c36d3e218bef4c9f2bc3fa6c4b` |
| 6 | `def` | [cardM](../../../../NumberTheory/ClassNumberFiniteNamespaced.lean/declarations/cardm.md) | 151 | `declaration-track:fa563926ad98677cc7fd3c000ed53e263b71deca4b68251beda01fac5a7516a5` |
| 7 | `def` | [distinctElems](../../../../NumberTheory/ClassNumberFiniteNamespaced.lean/declarations/distinctelems.md) | 157 | `declaration-track:d2508a4b7fa39a84e68d28c2a62d6b6eea4ec570d84af22b48941aca16c860be` |
| 8 | `def` | [finsetApprox](../../../../NumberTheory/ClassNumberFiniteNamespaced.lean/declarations/finsetapprox.md) | 164 | `declaration-track:da8d482c8345705bfabf108e7f8fe6d3f4fc5621565211d787070664b9070a0a` |
| 9 | `theorem` | [finsetApprox.zero_notMem](../../../../NumberTheory/ClassNumberFiniteNamespaced.lean/declarations/finsetapprox-zero-notmem.md) | 168 | `result-track:83daa2d85792dbaed41608e03041be0056e0fe7d3494832ea9786f08f32afcd0` |
| 10 | `theorem` | [mem_finsetApprox](../../../../NumberTheory/ClassNumberFiniteNamespaced.lean/declarations/mem-finsetapprox.md) | 174 | `result-track:e2ebc56a716b8e1c6e63dc0f05ed314017ae68af91bbb02e9865f64037e17809` |
| 11 | `theorem` | [exists_mem_finsetApprox](../../../../NumberTheory/ClassNumberFiniteNamespaced.lean/declarations/exists-mem-finsetapprox.md) | 195 | `result-track:29d3f1a16b3f88ff1affff93384c948d59344c25b3eedc0154d1e628f1686706` |
| 12 | `theorem` | [exists_mem_finset_approx'](../../../../NumberTheory/ClassNumberFiniteNamespaced.lean/declarations/exists-mem-finset-approx.md) | 247 | `result-track:df49f25d4e8318b9c678894364271751a055d2755f3fecc1a32bf2f62a70b961` |
| 13 | `theorem` | [prod_finsetApprox_ne_zero](../../../../NumberTheory/ClassNumberFiniteNamespaced.lean/declarations/prod-finsetapprox-ne-zero.md) | 265 | `result-track:0b4e5c115bc1dc890cbefe371062feb6a2941f0495de09ff60d5dab56c2bbe1e` |
| 14 | `theorem` | [ne_bot_of_prod_finsetApprox_mem](../../../../NumberTheory/ClassNumberFiniteNamespaced.lean/declarations/ne-bot-of-prod-finsetapprox-mem.md) | 271 | `result-track:062df34c4eb682fe698404dbc816072c4762a75c7ccb0ea29465144df66e886c` |
| 15 | `theorem` | [exists_mk0_eq_mk0](../../../../NumberTheory/ClassNumberFiniteNamespaced.lean/declarations/exists-mk0-eq-mk0.md) | 277 | `result-track:668ca5549a9aade27136b548e1f6e5eaa3b063224191e60328ae9dd77f37eb21` |
| 16 | `def` | [mkMMem](../../../../NumberTheory/ClassNumberFiniteNamespaced.lean/declarations/mkmmem.md) | 314 | `declaration-track:2b2dcb7e0322dae88ca6c11393c3f459ce6b7d06f85ae2f94707c018f54723a1` |
| 17 | `theorem` | [mkMMem_surjective](../../../../NumberTheory/ClassNumberFiniteNamespaced.lean/declarations/mkmmem-surjective.md) | 319 | `result-track:76434da1db3436018fb4bb7d390a9483addda6fde4f98e1891e2e30756d8a749` |
| 18 | `def` | [fintypeOfAdmissibleOfAlgebraic](../../../../NumberTheory/ClassNumberFiniteNamespaced.lean/declarations/fintypeofadmissibleofalgebraic.md) | 333 | `declaration-track:818855222edcb2cda7278e70665006100348a5ca5e7b8c30a7f3de16f22f1c78` |
| 19 | `def` | [fintypeOfAdmissibleOfFinite](../../../../NumberTheory/ClassNumberFiniteNamespaced.lean/declarations/fintypeofadmissibleoffinite.md) | 354 | `declaration-track:ffe952b18a09b995c0d9c4d5063c7c9dfb98dd8bd8e51dbcaabf8b87721e7785` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=96eb2e3445664672c590dea15fc11badebdd771ae4d6150be0078329ac3b5651 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Finite/Variantbddd4113dd8006b4e8f7e6ef5a0981ced9b6d67f65bd10f5b2fbdf34e3c317a5.lean","GRWTSK/_verification/specifications/Algebra/Finite/Variantbddd4113dd8006b4e8f7e6ef5a0981ced9b6d67f65bd10f5b2fbdf34e3c317a5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
