# Verification target: GRWTSK.NumberTheory.Diophantine.UnitEquation.RationalBoundaryCycle

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "826afa8d34142790e54d9756005c06fb1b20552f",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/UnitEquation/RationalBoundaryCycle.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/DiophantineEquations/RationalBoundaryCycle.lean/index.md) · [Full source](../../../../../NumberTheory/DiophantineEquations/RationalBoundaryCycle.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `826afa8d34142790e54d9756005c06fb1b20552f`.

Source path: `GRWTSK/NumberTheory/Diophantine/UnitEquation/RationalBoundaryCycle.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/UnitEquation/RationalBoundaryCycle.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Padics.RationalPairSupport`](../../../../../NumberTheory/RationalPairSupport.lean/index.md) — import line 11; pinned internal source present.
- [`GRWTSK.NumberTheory.Height.RationalVectorAffineHeight`](../../../../../NumberTheory/RationalVectorAffineHeight.lean/index.md) — import line 12; pinned internal source present.
- `Mathlib.Tactic.FieldSimp` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [UnitPair](../../../../../NumberTheory/DiophantineEquations/RationalBoundaryCycle.lean/declarations/unitpair.md) | 25 | `declaration-track:4df89c46154fd926471ffb1d76be13b7eea3e2520f7da49bd015870c2b6fef06` |
| 2 | `def` | [values](../../../../../NumberTheory/DiophantineEquations/RationalBoundaryCycle.lean/declarations/values.md) | 33 | `declaration-track:f2459a7d0cebcda8abc42b3c70d7df4b73a238e7a127720b9c67d507059dc637` |
| 3 | `def` | [mirror](../../../../../NumberTheory/DiophantineEquations/RationalBoundaryCycle.lean/declarations/mirror.md) | 35 | `declaration-track:605c3e5eb26da2413afbf6a30b5087cd8943e31f79b4732b6d7f5e3445b7942f` |
| 4 | `def` | [cycle](../../../../../NumberTheory/DiophantineEquations/RationalBoundaryCycle.lean/declarations/cycle.md) | 43 | `declaration-track:9f62676b57de4e240dee8d1c726b4db861dffdce0365148daab359f051195a64` |
| 5 | `theorem` | [mirror_twice](../../../../../NumberTheory/DiophantineEquations/RationalBoundaryCycle.lean/declarations/mirror-twice.md) | 53 | `result-track:a60e4794ae9f3b8ffb287dad0f2f565cd2f57d2bd558a2e46d5ae16052b0ac6d` |
| 6 | `theorem` | [cycle_twice_values](../../../../../NumberTheory/DiophantineEquations/RationalBoundaryCycle.lean/declarations/cycle-twice-values.md) | 56 | `result-track:4b2178fbf7e699eb9adb664af29fd49ca9716fc8058fe8d2714d399658c6dd10` |
| 7 | `theorem` | [cycle_thrice](../../../../../NumberTheory/DiophantineEquations/RationalBoundaryCycle.lean/declarations/cycle-thrice.md) | 61 | `result-track:67d6ac77d4ddb25aa02bd18cedaf3aefa1811b1cef9688613800009aed8a3948` |
| 8 | `theorem` | [mirror_cycle_mirror](../../../../../NumberTheory/DiophantineEquations/RationalBoundaryCycle.lean/declarations/mirror-cycle-mirror.md) | 66 | `result-track:02dfd387e9cebb0d3128e6de3d30506c681549fcb09de60a5bad0637f059f74c` |
| 9 | `theorem` | [cycle_ne_self](../../../../../NumberTheory/DiophantineEquations/RationalBoundaryCycle.lean/declarations/cycle-ne-self.md) | 75 | `result-track:2b4fe80b6bf068c5dcbaa0009603a2fb79fabcaa5f9f4deb91a307a991e0e2af` |
| 10 | `theorem` | [cycle_twice_ne_self](../../../../../NumberTheory/DiophantineEquations/RationalBoundaryCycle.lean/declarations/cycle-twice-ne-self.md) | 81 | `result-track:4fbaec923651e4fd22f6d323baabae4aa51bc2dfe78a2a3dfa1a706550ecb8c2` |
| 11 | `theorem` | [ratio_denominators](../../../../../NumberTheory/DiophantineEquations/RationalBoundaryCycle.lean/declarations/ratio-denominators.md) | 88 | `result-track:c922f3d1505252f38e72bd9de26f073c4ca0fd2734e3873ea8e67850fa62183c` |
| 12 | `theorem` | [denominator_right](../../../../../NumberTheory/DiophantineEquations/RationalBoundaryCycle.lean/declarations/denominator-right.md) | 93 | `result-track:3619b0e88244b60417054ad0f439bd04c1e2ad7f8700cc32fb95b5b86b0901e0` |
| 13 | `theorem` | [denominator_left](../../../../../NumberTheory/DiophantineEquations/RationalBoundaryCycle.lean/declarations/denominator-left.md) | 101 | `result-track:e72cd07e18a0231c877adda87b63fbf72d0bbb0542d7f4c99c9f835463610790` |
| 14 | `theorem` | [cycle_denominator](../../../../../NumberTheory/DiophantineEquations/RationalBoundaryCycle.lean/declarations/cycle-denominator.md) | 105 | `result-track:23e05ca91665fc74a18dfaefa6ef8ef9ceb6c546f39a555c4d9fdd4c2b705659` |
| 15 | `theorem` | [cycle_twice_denominator](../../../../../NumberTheory/DiophantineEquations/RationalBoundaryCycle.lean/declarations/cycle-twice-denominator.md) | 111 | `result-track:e7a50fedb2ef5859447feacf24bc7a921e53ca0fdfb491f76ce5a19f04699c70` |
| 16 | `theorem` | [values_numerator](../../../../../NumberTheory/DiophantineEquations/RationalBoundaryCycle.lean/declarations/values-numerator.md) | 116 | `result-track:fa37413006a136fa79f1b6ecc6a42fe45a19cf9fc2c791b88d3737dc27721486` |
| 17 | `theorem` | [values_max](../../../../../NumberTheory/DiophantineEquations/RationalBoundaryCycle.lean/declarations/values-max.md) | 123 | `result-track:78c3e3e565c36ea86e964cb05b3629167dfd987c868c7c25d4ce140cd36f43fc` |
| 18 | `theorem` | [mirror_height](../../../../../NumberTheory/DiophantineEquations/RationalBoundaryCycle.lean/declarations/mirror-height.md) | 135 | `result-track:179503a7cfaf73c16431158371211e41b32628936d5ccb313c2420dad67858ee` |
| 19 | `theorem` | [cycle_height](../../../../../NumberTheory/DiophantineEquations/RationalBoundaryCycle.lean/declarations/cycle-height.md) | 138 | `result-track:a185bc75b26c96b460050a71e8ee67c6513166547b27d30083f4e64e977c227f` |
| 20 | `theorem` | [cycle_valuations](../../../../../NumberTheory/DiophantineEquations/RationalBoundaryCycle.lean/declarations/cycle-valuations.md) | 156 | `result-track:515f665b2c2a39cc1a7a83a4ea92e95c4b72bd1476f1ca70e4f61a1933ea907f` |
| 21 | `theorem` | [valuation_alternatives](../../../../../NumberTheory/DiophantineEquations/RationalBoundaryCycle.lean/declarations/valuation-alternatives.md) | 166 | `result-track:8e7cef03df5afa9678c5d25eaf2fe0251201486c06b0871d8e82982747e0efb7` |
| 22 | `theorem` | [mirror_depth](../../../../../NumberTheory/DiophantineEquations/RationalBoundaryCycle.lean/declarations/mirror-depth.md) | 180 | `result-track:9fb5539cd4a727b9b5dbe77d00e9f418fb4751d8ea229de88cd154fd98c54a0d` |
| 23 | `theorem` | [cycle_depth](../../../../../NumberTheory/DiophantineEquations/RationalBoundaryCycle.lean/declarations/cycle-depth.md) | 184 | `result-track:859898cdb6ae5e946d02f4745c045c3ed1e9da7dfb3dd537173f3d1fe9bd70c6` |
| 24 | `theorem` | [mirror_support](../../../../../NumberTheory/DiophantineEquations/RationalBoundaryCycle.lean/declarations/mirror-support.md) | 190 | `result-track:2dda9f28d8106b5edf7a347a1fd1126f3921891831763715852d2d703e6f4a56` |
| 25 | `theorem` | [cycle_support](../../../../../NumberTheory/DiophantineEquations/RationalBoundaryCycle.lean/declarations/cycle-support.md) | 194 | `result-track:0bfb06ebeb23326980a6c79d0af635c9e49d94c6efbcdbbfe261afcb17992077` |
| 26 | `def` | [rotate](../../../../../NumberTheory/DiophantineEquations/RationalBoundaryCycle.lean/declarations/rotate.md) | 208 | `declaration-track:1fe7bdad3aff5b6076c0ba9e22146409770c7da83b3b2c14dfe71310997b7fd0` |
| 27 | `def` | [chart](../../../../../NumberTheory/DiophantineEquations/RationalBoundaryCycle.lean/declarations/chart.md) | 210 | `declaration-track:e33e2952f48f6dfe122bc0cef0e76d8559dc8465a5b2ee0d1064ad442d05ed6d` |
| 28 | `theorem` | [chart_height](../../../../../NumberTheory/DiophantineEquations/RationalBoundaryCycle.lean/declarations/chart-height.md) | 213 | `result-track:1f3612d87474a21ee93f0241ab7680069e9cbc61ea864c720a82c2ffd3ef97ab` |
| 29 | `theorem` | [chart_support](../../../../../NumberTheory/DiophantineEquations/RationalBoundaryCycle.lean/declarations/chart-support.md) | 218 | `result-track:ca01574ab34d61fa1e4273313f44fc2460a98ff59762cbcdf1947050117023c9` |
| 30 | `theorem` | [chart_depth](../../../../../NumberTheory/DiophantineEquations/RationalBoundaryCycle.lean/declarations/chart-depth.md) | 224 | `result-track:d030c6421ab03331eefda1be96d748ca21ae627540de9e25305075293becf1fb` |
| 31 | `def` | [halfPair](../../../../../NumberTheory/DiophantineEquations/RationalBoundaryCycle.lean/declarations/halfpair.md) | 231 | `declaration-track:b7514dc548de2cd8b1492ffce5fd2e234835593ec6fc569fce4fd19d1ed84dff` |
| 32 | `theorem` | [halfPair_mirror_fixed](../../../../../NumberTheory/DiophantineEquations/RationalBoundaryCycle.lean/declarations/halfpair-mirror-fixed.md) | 238 | `result-track:5e2918074e6784d92b8c4614e28d6befa54b1a2aa5bebcefa36f789346e013bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6db92966e70c887ea6f207d0a9e7ad1897ebf186670f666b979aa862103d8b75 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Diophantine/UnitEquation/RationalBoundaryCycle.lean","GRWTSK/_verification/specifications/NumberTheory/Diophantine/UnitEquation/RationalBoundaryCycle.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
