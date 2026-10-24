# Verification target: GRWTSK.Topology.GeneralTopology.PowerSeries.Variantded22366dd7f986b1ef914b4bd7bc3a82f0f96db15dbdc19a15a761a61c2dcde

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a7c59c077ea3e7c7fb2a691f9f6c02f7a91c3d1",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PowerSeries/Variantded22366dd7f986b1ef914b4bd7bc3a82f0f96db15dbdc19a15a761a61c2dcde.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/PowerSeries/Variantded22366dd7f986b1ef914b4bd7bc3a82f0f96db15dbdc19a15a761a61c2dcde.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/PowerSeries/Variantded22366dd7f986b1ef914b4bd7bc3a82f0f96db15dbdc19a15a761a61c2dcde.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a7c59c077ea3e7c7fb2a691f9f6c02f7a91c3d1`.

Source path: `GRWTSK/Topology/GeneralTopology/PowerSeries/Variantded22366dd7f986b1ef914b4bd7bc3a82f0f96db15dbdc19a15a761a61c2dcde.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PowerSeries/Variantded22366dd7f986b1ef914b4bd7bc3a82f0f96db15dbdc19a15a761a61c2dcde.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Enumerative.Pentagonal.Ring` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_order_pow_mul_prod_one_sub_pow](../../../../../mathematics/Topology/GeneralTopology/PowerSeries/Variantded22366dd7f986b1ef914b4bd7bc3a82f0f96db15dbdc19a15a761a61c2dcde.lean/declarations/tendsto-order-pow-mul-prod-one-sub-pow--8c80539f43e50f0d9ee0a5e3.md) | 45 | `result-track:8c80539f43e50f0d9ee0a5e3dc2733a9ad1e4dbdc3917be6a5a6c3cd25d1e34e` |
| 2 | `theorem` | [tendsto_order_neg_X_pow](../../../../../mathematics/Topology/GeneralTopology/PowerSeries/Variantded22366dd7f986b1ef914b4bd7bc3a82f0f96db15dbdc19a15a761a61c2dcde.lean/declarations/tendsto-order-neg-x-pow--2514db0dab2722996cace726.md) | 56 | `result-track:2514db0dab2722996cace7264322578fda28aa1a761bcaf5495bf5bd6159d31d` |
| 3 | `theorem` | [summable_pow_mul_prod_one_sub_pow](../../../../../mathematics/Topology/GeneralTopology/PowerSeries/Variantded22366dd7f986b1ef914b4bd7bc3a82f0f96db15dbdc19a15a761a61c2dcde.lean/declarations/summable-pow-mul-prod-one-sub-pow--c617a76e3b82cd70644056f7.md) | 64 | `result-track:c617a76e3b82cd70644056f71671a45308c9d3f7e41840f452801722420805e6` |
| 4 | `theorem` | [multipliable_one_sub_X_pow](../../../../../mathematics/Topology/GeneralTopology/PowerSeries/Variantded22366dd7f986b1ef914b4bd7bc3a82f0f96db15dbdc19a15a761a61c2dcde.lean/declarations/multipliable-one-sub-x-pow--f60764febefd9f4f664567d8.md) | 69 | `result-track:f60764febefd9f4f664567d80d2a714bc179614a9f0d9eef1ba1ee860669bda3` |
| 5 | `def` | [pentagonalSeries](../../../../../mathematics/Topology/GeneralTopology/PowerSeries/Variantded22366dd7f986b1ef914b4bd7bc3a82f0f96db15dbdc19a15a761a61c2dcde.lean/declarations/pentagonalseries--15e33ede89e14dd933cd8fa0.md) | 81 | `declaration-track:15e33ede89e14dd933cd8fa03173c1272933d9b7c02648c8ae024ad9ea9468ba` |
| 6 | `theorem` | [coeff_pentagonalSeries_eq_zero](../../../../../mathematics/Topology/GeneralTopology/PowerSeries/Variantded22366dd7f986b1ef914b4bd7bc3a82f0f96db15dbdc19a15a761a61c2dcde.lean/declarations/coeff-pentagonalseries-eq-zero--5d023597bbfbaf5ebcbf13bc.md) | 87 | `result-track:5d023597bbfbaf5ebcbf13bc61fc8b6879da9d005d180d8ebbffb503e621f6f9` |
| 7 | `theorem` | [coeff_pentagonalSeries_pentagonal](../../../../../mathematics/Topology/GeneralTopology/PowerSeries/Variantded22366dd7f986b1ef914b4bd7bc3a82f0f96db15dbdc19a15a761a61c2dcde.lean/declarations/coeff-pentagonalseries-pentagonal--9bc5ead47db65ac475d62423.md) | 91 | `result-track:9bc5ead47db65ac475d62423314bc86e582ee7b1cc432cb3bc13c4f09f7b18fa` |
| 8 | `theorem` | [coeff_pentagonalSeries_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/PowerSeries/Variantded22366dd7f986b1ef914b4bd7bc3a82f0f96db15dbdc19a15a761a61c2dcde.lean/declarations/coeff-pentagonalseries-eq-zero-iff--7ecf7278b7ca24d766b12227.md) | 96 | `result-track:7ecf7278b7ca24d766b1222713583815a64ef34b73415865125f3cac2e121c15` |
| 9 | `theorem` | [coeff_pentagonalSeries_mul_eq_extend](../../../../../mathematics/Topology/GeneralTopology/PowerSeries/Variantded22366dd7f986b1ef914b4bd7bc3a82f0f96db15dbdc19a15a761a61c2dcde.lean/declarations/coeff-pentagonalseries-mul-eq-extend--99022ab20392f62a7dd1454a.md) | 100 | `result-track:99022ab20392f62a7dd1454a20fb58c0629ce9943191c2b2719891a29dd65995` |
| 10 | `theorem` | [hasSum_pentagonalSeries](../../../../../mathematics/Topology/GeneralTopology/PowerSeries/Variantded22366dd7f986b1ef914b4bd7bc3a82f0f96db15dbdc19a15a761a61c2dcde.lean/declarations/hassum-pentagonalseries--e513530c1cf300a41a5c1b8e.md) | 113 | `result-track:e513530c1cf300a41a5c1b8e4f658df8bf16060af9d1635ef1bbd04dd8c1d1d9` |
| 11 | `theorem` | [pentagonalSeries_eq_tsum](../../../../../mathematics/Topology/GeneralTopology/PowerSeries/Variantded22366dd7f986b1ef914b4bd7bc3a82f0f96db15dbdc19a15a761a61c2dcde.lean/declarations/pentagonalseries-eq-tsum--ff5b5405a1f3f720453999e4.md) | 122 | `result-track:ff5b5405a1f3f720453999e4ce26f559c2da5ab2d0036522bcab53bccf61e2e7` |
| 12 | `theorem` | [hasSum_pow_pentagonal_sub_pentagonalSeries](../../../../../mathematics/Topology/GeneralTopology/PowerSeries/Variantded22366dd7f986b1ef914b4bd7bc3a82f0f96db15dbdc19a15a761a61c2dcde.lean/declarations/hassum-pow-pentagonal-sub-pentagonalseries--b3a3afebb9d9c6999678d977.md) | 129 | `result-track:b3a3afebb9d9c6999678d977c44ae5ec55275a75f25408f8c9b15e259f8c5439` |
| 13 | `theorem` | [pentagonalSeries_eq_tsum_pow_pentagonal_sub](../../../../../mathematics/Topology/GeneralTopology/PowerSeries/Variantded22366dd7f986b1ef914b4bd7bc3a82f0f96db15dbdc19a15a761a61c2dcde.lean/declarations/pentagonalseries-eq-tsum-pow-pentagonal-sub--8cd6b04408254d2f54497b6f.md) | 139 | `result-track:8cd6b04408254d2f54497b6f8062519515f178170b3bc5fcb78a0f741da4261b` |
| 14 | `theorem` | [tprod_one_sub_X_pow'](../../../../../mathematics/Topology/GeneralTopology/PowerSeries/Variantded22366dd7f986b1ef914b4bd7bc3a82f0f96db15dbdc19a15a761a61c2dcde.lean/declarations/tprod-one-sub-x-pow--8e28504bfb75c0420a21e957.md) | 145 | `result-track:8e28504bfb75c0420a21e957976e103f19743b605bc2bcce2f6de40996309b35` |
| 15 | `theorem` | [coeff_prod_one_sub_X_pow_eventually_eq](../../../../../mathematics/Topology/GeneralTopology/PowerSeries/Variantded22366dd7f986b1ef914b4bd7bc3a82f0f96db15dbdc19a15a761a61c2dcde.lean/declarations/coeff-prod-one-sub-x-pow-eventually-eq--8b8cee5114afde423560d919.md) | 169 | `result-track:8b8cee5114afde423560d9190dc87b6d98766ae5277ea079b55832fb4b1e0503` |
| 16 | `theorem` | [hasProd_one_sub_X_pow](../../../../../mathematics/Topology/GeneralTopology/PowerSeries/Variantded22366dd7f986b1ef914b4bd7bc3a82f0f96db15dbdc19a15a761a61c2dcde.lean/declarations/hasprod-one-sub-x-pow--1d5dfe09628bab81326e6853.md) | 183 | `result-track:1d5dfe09628bab81326e68535631c5a67deabc7766756d3557b57200bc507b46` |
| 17 | `theorem` | [tprod_one_sub_X_pow](../../../../../mathematics/Topology/GeneralTopology/PowerSeries/Variantded22366dd7f986b1ef914b4bd7bc3a82f0f96db15dbdc19a15a761a61c2dcde.lean/declarations/tprod-one-sub-x-pow--48467055175ae6a5d0201b40.md) | 190 | `result-track:48467055175ae6a5d0201b402ae602e7dd9a32dab816e5a35c27f4d3b4392587` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
