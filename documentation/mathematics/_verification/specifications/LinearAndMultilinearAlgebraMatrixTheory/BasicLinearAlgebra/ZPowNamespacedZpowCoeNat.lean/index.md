# Verification target: ZPow Namespaced Zpow Coe Nat

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f7fb81ca320faae83a26696bb67f589b4efa9c1",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ZPow/Variant0c4b5bccefe2acc5a9e8d1445fc5098b7dc066c6971bcef330a049db2cbe2e00.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f7fb81ca320faae83a26696bb67f589b4efa9c1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ZPow/Variant0c4b5bccefe2acc5a9e8d1445fc5098b7dc066c6971bcef330a049db2cbe2e00.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ZPow/Variant0c4b5bccefe2acc5a9e8d1445fc5098b7dc066c6971bcef330a049db2cbe2e00.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.NonsingularInverse` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/declarations/instance.md) | 44 | `declaration-track:c0aa7c69640a75e4f4bb91dd135eb3034ad706de1325abaca738de7203261006` |
| 2 | `theorem` | [inv_pow'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/declarations/inv-pow.md) | 50 | `result-track:2578494eef862a6e27c20ea97340cfaf7ae5da9665f0637a6d48da635f4d24f7` |
| 3 | `theorem` | [pow_sub'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/declarations/pow-sub.md) | 56 | `result-track:e3e267e7c4e69e250102ffbe0886d1ae8c496186cb8971309f437db170cdb0be` |
| 4 | `theorem` | [pow_inv_comm'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/declarations/pow-inv-comm.md) | 63 | `result-track:46e96448b520b0276e197eff8098f64289e2f252f1944cac527d34b0e90e93fd` |
| 5 | `theorem` | [one_zpow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/declarations/one-zpow.md) | 87 | `result-track:a49ac8a43d1f28fa5fdfec8996df51e8fdf651db884b8fb4b4379fb9579a8afe` |
| 6 | `theorem` | [zero_zpow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/declarations/zero-zpow.md) | 92 | `result-track:a9ae31c5f3056b79054303a40357eaac812175e9b9528dd501b6618a1fb796f8` |
| 7 | `theorem` | [zero_zpow_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/declarations/zero-zpow-eq.md) | 100 | `result-track:df0c9ec018f7e4f42050f0993b42d80b031b53f680fe7cc9b150b823a4bdf008` |
| 8 | `theorem` | [inv_zpow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/declarations/inv-zpow-source-edition-2.md) | 106 | `result-track:9eb0ca5e49742814ab806ed49c6cad35f1cf8332bb9288bf722087a9f2f0479c` |
| 9 | `theorem` | [zpow_neg_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/declarations/zpow-neg-one.md) | 112 | `result-track:0000402186e485b35f8e6b8961ae99a1d3f3e4a826e687ac47283749ce3e73d9` |
| 10 | `theorem` | [zpow_coe_nat](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/declarations/zpow-coe-nat.md) | 117 | `result-track:f47d2fdbd569ef514ab426342525b3e8fa22d41c40d42d4924c8fb06ee5bd707` |
| 11 | `theorem` | [zpow_neg_coe_nat](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/declarations/zpow-neg-coe-nat.md) | 122 | `result-track:6b7be4ce4304fa0ba47a0587b94da6f9aa03703edf5628d0118990a46a4ca8a9` |
| 12 | `theorem` | [ZPow Namespaced Zpow Coe Nat](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/declarations/det-zpow.md) | 128 | `result-track:bed716b51dca7dfdc57ced7e5021535adef35d86137c2107d2723a772298e5c9` |
| 13 | `theorem` | [isUnit_det_zpow_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/declarations/isunit-det-zpow-iff.md) | 134 | `result-track:f86502ef3c363df0f259f69dd6a1017f2aef07c9d5f9c8eaae8aa68e1cff61c2` |
| 14 | `theorem` | [zpow_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/declarations/zpow-neg.md) | 144 | `result-track:290e61168b1659df6aec3bdc316d01bc8786bef05a599a176eb507734b4574b3` |
| 15 | `theorem` | [inv_zpow'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/declarations/inv-zpow.md) | 152 | `result-track:38fa646883ed5bf1b76ea43a5a63a3b1c19eb6bb34cf20d9b30d2053001ae0bf` |
| 16 | `theorem` | [zpow_add_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/declarations/zpow-add-one.md) | 156 | `result-track:a55ca0e40bdb875247a5d859d059792ae6149ca9af316d2afeb18b808ca2b834` |
| 17 | `theorem` | [zpow_sub_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/declarations/zpow-sub-one.md) | 168 | `result-track:c94ca04b7d59e664917b646042b9fdd9b7403dc17a7f43bd46426f7b8ea1ff70` |
| 18 | `theorem` | [zpow_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/declarations/zpow-add.md) | 175 | `result-track:eb764fc4bc1d7430179a9c2f84a5b52bdac671a7a9d7b2a9900130a23b9682c4` |
| 19 | `theorem` | [zpow_add_of_nonpos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/declarations/zpow-add-of-nonpos.md) | 182 | `result-track:55feb67c119e80f34113464c216c3c4378db37ae49aa5a68a43980bb78ab3045` |
| 20 | `theorem` | [zpow_add_of_nonneg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/declarations/zpow-add-of-nonneg.md) | 191 | `result-track:9e20468609a252616b3033a5e5cf29e7619ba91231dc01ac197f752a554ba187` |
| 21 | `theorem` | [zpow_one_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/declarations/zpow-one-add.md) | 198 | `result-track:51db4eb08259be3e98f0d31c96b185cb7b6275722d4e8a7a3f8e5d248bd1d19b` |
| 22 | `theorem` | [SemiconjBy.zpow_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/declarations/semiconjby-zpow-right.md) | 202 | `result-track:ac19907231a15b783d8d3a9792c1b5660bad476759316efa00483d1388092466` |
| 23 | `theorem` | [Commute.zpow_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/declarations/commute-zpow-right.md) | 221 | `result-track:6c7ca6b5f080f3247056ad74e1e4a53de7c53cd2da6f7da38449579e81198d9a` |
| 24 | `theorem` | [Commute.zpow_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/declarations/commute-zpow-left.md) | 229 | `result-track:f9c93cd42df9fb6aaca73ac8ff0dd3fb2c15de9afde043976e2a047c8f1d318a` |
| 25 | `theorem` | [Commute.zpow_zpow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/declarations/commute-zpow-zpow.md) | 233 | `result-track:66e34d1968d4f34e69a6e4ceef1c88db57f133de9fe5c6fffde00a7beb07785c` |
| 26 | `theorem` | [Commute.zpow_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/declarations/commute-zpow-self.md) | 237 | `result-track:1d5dd75d4f015642b8105b88426d50788764c1eb33ae3affe09cfa1f4f26257a` |
| 27 | `theorem` | [Commute.self_zpow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/declarations/commute-self-zpow.md) | 241 | `result-track:c0ad2344c997cc504e4dbe3848f91411d0ad40b3c117ed2c78724669c50a5a08` |
| 28 | `theorem` | [Commute.zpow_zpow_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/declarations/commute-zpow-zpow-self.md) | 245 | `result-track:b326f3f86602c860e66df91a2190f0ff83a8aa793921e80c0563d4a8478ab718` |
| 29 | `theorem` | [zpow_bit0](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/declarations/zpow-bit0.md) | 250 | `result-track:62a28561b28780468f5fc68e00ed5d81646c4a10c467ce4a8a8b2000bed2ff98` |
| 30 | `theorem` | [zpow_add_one_of_ne_neg_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/declarations/zpow-add-one-of-ne-neg-one.md) | 256 | `result-track:19387a149b93511cb15c3f05c2372a76c63bc35a3e93d62b9095adaba2ffb4d9` |
| 31 | `theorem` | [zpow_bit1](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/declarations/zpow-bit1-source-edition-2.md) | 267 | `result-track:afd596267b210b738313c8f4b8291d932bc60d080aa26dbd6f65b2dd18178910` |
| 32 | `theorem` | [zpow_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/declarations/zpow-mul.md) | 273 | `result-track:928c2987940c4bb2a97bb69add029f63c68d28b75222f976cd31ac71fc5adad6` |
| 33 | `theorem` | [zpow_mul'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/declarations/zpow-mul-source-edition-2.md) | 287 | `result-track:ef6d26ab447d661f68dc5d1399b4daa5a1107dd4e2a9af191ecb5ac19e845b7c` |
| 34 | `theorem` | [coe_units_zpow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/declarations/coe-units-zpow.md) | 293 | `result-track:d80d190f0b9e40154b4610f316cd9941d545b3ddb874ded4ee5a2a049f809041` |
| 35 | `theorem` | [zpow_ne_zero_of_isUnit_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/declarations/zpow-ne-zero-of-isunit-det.md) | 299 | `result-track:6e472f29dcc62fb5c2fb6d091ed8d015a1a27be8fe806586829bd9c20c305557` |
| 36 | `theorem` | [zpow_sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/declarations/zpow-sub.md) | 307 | `result-track:5239c8ef51025502fbfc2095a2ff8cd273f20866f9e7899e45159e3135e39df1` |
| 37 | `theorem` | [Commute.mul_zpow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/declarations/commute-mul-zpow.md) | 311 | `result-track:b357625908a20aad9dad70e02a211d5d60a0e365a0708572274c82728e73a3b4` |
| 38 | `theorem` | [zpow_bit0'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/declarations/zpow-bit0-source-edition-2.md) | 319 | `result-track:ed56fec2f8365acd5c34c40329b256b37fbe1ba4b7988d02ded1fe775968906a` |
| 39 | `theorem` | [zpow_bit1'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/declarations/zpow-bit1.md) | 324 | `result-track:57bffb11d12483b618e74e5edad7fc724f38eaed8cd30191be5588baf8a585af` |
| 40 | `theorem` | [zpow_neg_mul_zpow_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/declarations/zpow-neg-mul-zpow-self.md) | 328 | `result-track:3db59a4284751389947eea021a1da4a88d2dd31c2f30c0a8aa6c680827b504fa` |
| 41 | `theorem` | [one_div_pow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/declarations/one-div-pow.md) | 332 | `result-track:4c7bdd232b71c368e420907611a279bcd4df4d0204928369e6481f83354fcc17` |
| 42 | `theorem` | [one_div_zpow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/declarations/one-div-zpow.md) | 335 | `result-track:d4190ba6d20006303a6f73fb102a144b760f4ed9fd17a960337ac2e078ae189f` |
| 43 | `theorem` | [transpose_zpow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/declarations/transpose-zpow.md) | 339 | `result-track:63d0e606c259108c1ef5c1bd3c56342f374d821ebf73b76511dcda04e8d2102c` |
| 44 | `theorem` | [conjTranspose_zpow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZPowNamespacedZpowCoeNat.lean/declarations/conjtranspose-zpow.md) | 345 | `result-track:9302d8f9289edae171fa96adf6bb5dcfcb624371a6c7657ffa9e1ac56344e982` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=57af094cae5746e889ab5cd10b22044aaf7010bbc54818af2ae65d51c787212b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ZPow/Variant0c4b5bccefe2acc5a9e8d1445fc5098b7dc066c6971bcef330a049db2cbe2e00.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/ZPow/Variant0c4b5bccefe2acc5a9e8d1445fc5098b7dc066c6971bcef330a049db2cbe2e00.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
