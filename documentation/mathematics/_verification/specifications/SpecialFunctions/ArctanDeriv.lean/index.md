# Verification target: Arctan Deriv

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3fe76c99a7630ab45ec97d182cd03083e12238e3",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant94f6bc055566d38b60919b92494d7472f31fb17e1f70897c9ff1d8ac7f4128b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/ArctanDeriv.lean/index.md) · [Full source](../../../../SpecialFunctions/ArctanDeriv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3fe76c99a7630ab45ec97d182cd03083e12238e3`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant94f6bc055566d38b60919b92494d7472f31fb17e1f70897c9ff1d8ac7f4128b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant94f6bc055566d38b60919b92494d7472f31fb17e1f70897c9ff1d8ac7f4128b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Arctan` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.ComplexDeriv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../SpecialFunctions/ArctanDeriv.lean/declarations/macro-rules.md) | 20 | `declaration-track:b146661960a5d85e8af6279218e595f6bf50082caec259b9daa748a6c9ae7664` |
| 2 | `theorem` | [hasStrictDerivAt_tan](../../../../SpecialFunctions/ArctanDeriv.lean/declarations/hasstrictderivat-tan.md) | 28 | `result-track:b5881b0cdc69305532473c9149563fdfb8d8a9fbeb12cb5789f200022583f356` |
| 3 | `theorem` | [hasDerivAt_tan](../../../../SpecialFunctions/ArctanDeriv.lean/declarations/hasderivat-tan.md) | 32 | `result-track:90d1a112ddbc7aa6e67f8435929ca2008df49af623befad7f2a64ac2aacf762f` |
| 4 | `theorem` | [tendsto_abs_tan_of_cos_eq_zero](../../../../SpecialFunctions/ArctanDeriv.lean/declarations/tendsto-abs-tan-of-cos-eq-zero.md) | 36 | `result-track:9d3ed30bfd21dcdc688f34b58f22eb22758b37ee30e86fcba6628643fad3709b` |
| 5 | `theorem` | [tendsto_abs_tan_atTop](../../../../SpecialFunctions/ArctanDeriv.lean/declarations/tendsto-abs-tan-attop.md) | 45 | `result-track:a7b205293cfe7210c964cbc91bedc206fd14a22a3ee088fa17b41a54dbd21793` |
| 6 | `theorem` | [continuousAt_tan](../../../../SpecialFunctions/ArctanDeriv.lean/declarations/continuousat-tan.md) | 50 | `result-track:a4f97b72ca804fcef1128c57e00685ff8d1325aae17164646ffa7835a7369e7f` |
| 7 | `theorem` | [differentiableAt_tan](../../../../SpecialFunctions/ArctanDeriv.lean/declarations/differentiableat-tan.md) | 56 | `result-track:7619dfabde99fb1c77f4f4f67fe015317386c79a738ed4e58b3efa76588d57c4` |
| 8 | `theorem` | [deriv_tan](../../../../SpecialFunctions/ArctanDeriv.lean/declarations/deriv-tan.md) | 61 | `result-track:7513adea498a5fc6f145a36812a6c8c5d233a77620338cd9ee1025ce162f548c` |
| 9 | `theorem` | [contDiffAt_tan](../../../../SpecialFunctions/ArctanDeriv.lean/declarations/contdiffat-tan.md) | 69 | `result-track:805fc92e13c7c13c55c120af5ad4bdfdfa6cf175a97d20a65dde88fbc4f5fd1b` |
| 10 | `theorem` | [hasDerivAt_tan_of_mem_Ioo](../../../../SpecialFunctions/ArctanDeriv.lean/declarations/hasderivat-tan-of-mem-ioo.md) | 74 | `result-track:53fb39d67b8188ceee0a42e6014f9346fa34837b98fb5679ec9868094a90d01f` |
| 11 | `theorem` | [differentiableAt_tan_of_mem_Ioo](../../../../SpecialFunctions/ArctanDeriv.lean/declarations/differentiableat-tan-of-mem-ioo.md) | 79 | `result-track:b97d040624a20d5f0bfc5c8a786179fcf0f049c4081b08fd1d1ec4a76a2de121` |
| 12 | `theorem` | [hasStrictDerivAt_arctan](../../../../SpecialFunctions/ArctanDeriv.lean/declarations/hasstrictderivat-arctan.md) | 84 | `result-track:3473d54d006680475ea9331498e67d60af28aa9a82b6120cdb3e4e817e21a935` |
| 13 | `theorem` | [hasDerivAt_arctan](../../../../SpecialFunctions/ArctanDeriv.lean/declarations/hasderivat-arctan-source-edition-2.md) | 90 | `result-track:88a3805b33aef8c9271d80487c8c0b114e7fcff710098498ac3cf7cb320d84ad` |
| 14 | `theorem` | [differentiableAt_arctan](../../../../SpecialFunctions/ArctanDeriv.lean/declarations/differentiableat-arctan-source-edition-2.md) | 94 | `result-track:93e0eb38003fa5b54af48663b1e10347c4d5a6ea13510ed2fc509ef7e4c0cf70` |
| 15 | `theorem` | [differentiable_arctan](../../../../SpecialFunctions/ArctanDeriv.lean/declarations/differentiable-arctan-source-edition-2.md) | 98 | `result-track:f7516ed56a42d9a909bb9e30f338017e8dc7bdb178cdffae8c3d62298ea5b255` |
| 16 | `theorem` | [deriv_arctan](../../../../SpecialFunctions/ArctanDeriv.lean/declarations/deriv-arctan.md) | 103 | `result-track:deed0ba553b1a57b504266f69b3382e5ef957578eb41a6735fd57f966906af39` |
| 17 | `theorem` | [contDiff_arctan](../../../../SpecialFunctions/ArctanDeriv.lean/declarations/contdiff-arctan-source-edition-2.md) | 107 | `result-track:84a0eaf51dbc28c000e12d42dc118a0667ddf0ac244e4eef8704195b8743b0cf` |
| 18 | `theorem` | [HasStrictDerivAt.arctan](../../../../SpecialFunctions/ArctanDeriv.lean/declarations/hasstrictderivat-arctan-source-edition-2.md) | 131 | `result-track:9e1eeb02d157c84ebf951bf39c93e3476a6385664e0ddb2d887739a6f1566b92` |
| 19 | `theorem` | [HasDerivAt.arctan](../../../../SpecialFunctions/ArctanDeriv.lean/declarations/hasderivat-arctan.md) | 136 | `result-track:6d4d760f0bdb56e57e5cd9d49b0f524582d00c782feab103eff67168b1983238` |
| 20 | `theorem` | [HasDerivWithinAt.arctan](../../../../SpecialFunctions/ArctanDeriv.lean/declarations/hasderivwithinat-arctan.md) | 141 | `result-track:3591b460c18082ef29b0f14195163f13a952503f4d5321d3ac9d2ee12c4167f1` |
| 21 | `theorem` | [derivWithin_arctan](../../../../SpecialFunctions/ArctanDeriv.lean/declarations/derivwithin-arctan.md) | 146 | `result-track:b7b56ca1b099757100371442f2c65e850d1235d576256df0f6f73e43ec1d15be` |
| 22 | `theorem` | [deriv_arctan](../../../../SpecialFunctions/ArctanDeriv.lean/declarations/deriv-arctan-source-edition-2.md) | 152 | `result-track:f73920fcdaddb45813842c46a83008f29d07574e14b172d5843cb80cd5b8d50b` |
| 23 | `theorem` | [HasStrictFDerivAt.arctan](../../../../SpecialFunctions/ArctanDeriv.lean/declarations/hasstrictfderivat-arctan.md) | 164 | `result-track:724a4c15e31584fc15a216e04d233c6bafe2ced4b5760e6aab93361ae9924417` |
| 24 | `theorem` | [HasFDerivAt.arctan](../../../../SpecialFunctions/ArctanDeriv.lean/declarations/hasfderivat-arctan.md) | 169 | `result-track:7c742d384f8b9ad109210f0f7023a0db26199ea87a4b278e4daf342a8019622a` |
| 25 | `theorem` | [HasFDerivWithinAt.arctan](../../../../SpecialFunctions/ArctanDeriv.lean/declarations/hasfderivwithinat-arctan.md) | 174 | `result-track:10fed91288438c22fdba5861887d6efeca35d47ba426c8a898a6349c5f34bae5` |
| 26 | `theorem` | [fderivWithin_arctan](../../../../SpecialFunctions/ArctanDeriv.lean/declarations/fderivwithin-arctan.md) | 179 | `result-track:818bb3ca850df801b3c2499c024a17434186ae000a51e4f498b56c60459a987d` |
| 27 | `theorem` | [fderiv_arctan](../../../../SpecialFunctions/ArctanDeriv.lean/declarations/fderiv-arctan.md) | 185 | `result-track:973e4500966dfd4a7289cc0cb5a69ec2c2a325959ea6d7c24ff031feb8bd15e9` |
| 28 | `theorem` | [DifferentiableWithinAt.arctan](../../../../SpecialFunctions/ArctanDeriv.lean/declarations/differentiablewithinat-arctan.md) | 190 | `result-track:0fc93c9c500182e84bcd027154241b858a88103237ae0fe7baa8eacafe154c6f` |
| 29 | `theorem` | [DifferentiableAt.arctan](../../../../SpecialFunctions/ArctanDeriv.lean/declarations/differentiableat-arctan.md) | 196 | `result-track:23269ea15da1c3c7472cf84b5ecd76803bc84a1313ccfbd2025687c6b80a58be` |
| 30 | `theorem` | [DifferentiableOn.arctan](../../../../SpecialFunctions/ArctanDeriv.lean/declarations/differentiableon-arctan.md) | 201 | `result-track:e6ce0c8e1d24b99b0d43d67e032963dd941425f74e7832fb08a8751e902c07a1` |
| 31 | `theorem` | [Differentiable.arctan](../../../../SpecialFunctions/ArctanDeriv.lean/declarations/differentiable-arctan.md) | 206 | `result-track:50b7a5f6ae262fedfa8c93862e3fc0926136c554e43c8b3f0effb6317874cec9` |
| 32 | `theorem` | [ContDiffAt.arctan](../../../../SpecialFunctions/ArctanDeriv.lean/declarations/contdiffat-arctan.md) | 210 | `result-track:9a342bf888c9173c955da2482457a0dfa3af474aa23be780352287097a737ebb` |
| 33 | `theorem` | [ContDiff.arctan](../../../../SpecialFunctions/ArctanDeriv.lean/declarations/contdiff-arctan.md) | 214 | `result-track:15765aa0cd217e29b9990c7bdc184221257d8ff78605cf35b671efe3e19568ef` |
| 34 | `theorem` | [ContDiffWithinAt.arctan](../../../../SpecialFunctions/ArctanDeriv.lean/declarations/contdiffwithinat-arctan.md) | 218 | `result-track:e02a718716496ec742c65c1eb5a096baf000e865127e62ff76d8efad9a03f99e` |
| 35 | `theorem` | [ContDiffOn.arctan](../../../../SpecialFunctions/ArctanDeriv.lean/declarations/contdiffon-arctan.md) | 223 | `result-track:f19608b50ce6770a51424fe3181ef69789c8cb42763fdbcb700fd4af7750875b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dd42b433fc7d79c5827b68660eeb2eba34b83d4851a90d098e37904a97848911 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant94f6bc055566d38b60919b92494d7472f31fb17e1f70897c9ff1d8ac7f4128b4.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant94f6bc055566d38b60919b92494d7472f31fb17e1f70897c9ff1d8ac7f4128b4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
