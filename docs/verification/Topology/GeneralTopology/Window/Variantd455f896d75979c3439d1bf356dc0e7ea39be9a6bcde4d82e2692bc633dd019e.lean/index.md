# Verification target: GRWTSK.Topology.GeneralTopology.Window.Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "335299492dfbf25c3a74e8acfbe583f84ebb2a9a",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `335299492dfbf25c3a74e8acfbe583f84ebb2a9a`.

Source path: `GRWTSK/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Statement` — import line 27; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Certificate.Poly` — import line 28; external provider; requires a separately pinned dependency.
- `Zeta23.ThmD.Limit` — import line 29; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cRatio_eq_cWin](../../../../../mathematics/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean/declarations/cratio-eq-cwin--8894221e17913be41ce7919c.md) | 44 | `result-track:8894221e17913be41ce7919c9ed06bd205865d25db095c52b758c11ec884ada1` |
| 2 | `theorem` | [vConv_nonneg](../../../../../mathematics/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean/declarations/vconv-nonneg--8a9cdab3404a4551bcd32bf6.md) | 53 | `result-track:8a9cdab3404a4551bcd32bf6e2cf7f18d0bcd354be7ff7cf92930cf3621de464` |
| 3 | `theorem` | [jWin_nonneg](../../../../../mathematics/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean/declarations/jwin-nonneg--da22854180b2693db62096a5.md) | 62 | `result-track:da22854180b2693db62096a591018cf83cee1fafc833cfcf7608822ec1b46ba6` |
| 4 | `theorem` | [cWin_pos](../../../../../mathematics/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean/declarations/cwin-pos--ab2383db67bdcabfb7b4d713.md) | 71 | `result-track:ab2383db67bdcabfb7b4d713be7b1a0b56f18595d81bd4eec0108b8d6ab3b0d6` |
| 5 | `theorem` | [cWin_denom_pos](../../../../../mathematics/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean/declarations/cwin-denom-pos--1a8fea1a3ef393221c71ef28.md) | 79 | `result-track:1a8fea1a3ef393221c71ef28db4b95b01ee36c4be1d87d9d3df1697b071e41a2` |
| 6 | `theorem` | [tendsto_cRatio_cWin](../../../../../mathematics/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean/declarations/tendsto-cratio-cwin--d7efe38fb70891cf7d499811.md) | 92 | `result-track:d7efe38fb70891cf7d499811f39a787d30d2c12bafe823e5d60a2fb3343dcd9b` |
| 7 | `theorem` | [continuous_vConv](../../../../../mathematics/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean/declarations/continuous-vconv--901bbd13ccc3241240218596.md) | 112 | `result-track:901bbd13ccc3241240218596c7ecc5bae1cea0e43b535c25868fe768acef1ed1` |
| 8 | `theorem` | [tendsto_JT_of_autocorr_close](../../../../../mathematics/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean/declarations/tendsto-jt-of-autocorr-close--12f7ed6d2f6463723c138196.md) | 122 | `result-track:12f7ed6d2f6463723c1381968ec48f1c9b4d9248b0f0636d06a048675ffa4fb9` |
| 9 | `theorem` | [jWin_vFlat](../../../../../mathematics/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean/declarations/jwin-vflat--a1fdb8004abe88ba212fbbba.md) | 214 | `result-track:a1fdb8004abe88ba212fbbba33a63f2189a06c8ae7936e67e07080a146a3f6cc` |
| 10 | `theorem` | [cWin_vFlat](../../../../../mathematics/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean/declarations/cwin-vflat--55da883f469538bb1098006b.md) | 218 | `result-track:55da883f469538bb1098006bacf9eca470cf6d8146ac38748b5da9a9e2da6227` |
| 11 | `theorem` | [kappaXi_vFlat](../../../../../mathematics/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean/declarations/kappaxi-vflat--a78b656593eb285484d9760f.md) | 222 | `result-track:a78b656593eb285484d9760f3fef4bf72bc5c12a9baedd5148c4a9ee89b2842f` |
| 12 | `theorem` | [eventually_w8](../../../../../mathematics/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean/declarations/eventually-w8--f43b162dc0b08e8b566afb76.md) | 226 | `result-track:f43b162dc0b08e8b566afb7688b29a6bb7666a4fd959a477f61fe9be7bab84d1` |
| 13 | `theorem` | [tendsto_a_flat](../../../../../mathematics/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean/declarations/tendsto-a-flat--ffaa61fd7595b51168161d04.md) | 230 | `result-track:ffaa61fd7595b51168161d04f4935fcdc82eaa9d4c8779aa1ad443370781dde4` |
| 14 | `theorem` | [tendsto_b_flat](../../../../../mathematics/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean/declarations/tendsto-b-flat--b2e21c0d3396dea01fa82ff2.md) | 242 | `result-track:b2e21c0d3396dea01fa82ff26feff80b0aa99c0547b399aa51fd530a05cb4944` |
| 15 | `theorem` | [g_flat_close](../../../../../mathematics/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean/declarations/g-flat-close--f136f07946f428b0c6a254f6.md) | 254 | `result-track:f136f07946f428b0c6a254f638284df6ef0555788de0e34629042b952f3b4b10` |
| 16 | `theorem` | [tendsto_JT_flat](../../../../../mathematics/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean/declarations/tendsto-jt-flat--9d21a5caef99429a54e83c1d.md) | 270 | `result-track:9d21a5caef99429a54e83c1d8331b459c3d03658fd427a71e2808d35eeae2bd7` |
| 17 | `theorem` | [tendsto_cRatio_flat](../../../../../mathematics/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean/declarations/tendsto-cratio-flat--8ba2e5786c3381f865c3364e.md) | 281 | `result-track:8ba2e5786c3381f865c3364ef9818971455424844a7a9787c3a82f5df7a84dae` |
| 18 | `theorem` | [cWin_vFlat_pos](../../../../../mathematics/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean/declarations/cwin-vflat-pos--da1ded8d4e6077f3dedbb627.md) | 293 | `result-track:da1ded8d4e6077f3dedbb627fdaf3a9f5f7f70c1d517bdc2451ab732fd7c856d` |
| 19 | `theorem` | [continuous_jWin](../../../../../mathematics/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean/declarations/continuous-jwin--275facf18ce517b4143218a4.md) | 309 | `result-track:275facf18ce517b4143218a459d8b7196fdfb0c265d5d90309e2c20605059524` |
| 20 | `theorem` | [continuousOn_cWin](../../../../../mathematics/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean/declarations/continuouson-cwin--ec98db9d10ba2d2d09d88849.md) | 318 | `result-track:ec98db9d10ba2d2d09d88849a31ba44a2d54a7b0eb674272587f364d4f789dd6` |
| 21 | `theorem` | [continuousOn_inv_cWin](../../../../../mathematics/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean/declarations/continuouson-inv-cwin--c8a4204ea76acd2def3dc5ab.md) | 328 | `result-track:c8a4204ea76acd2def3dc5ab12fd04c4e34338703dbb3da01b94eb5c5c8a8e22` |
| 22 | `theorem` | [continuousOn_kappaXi](../../../../../mathematics/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean/declarations/continuouson-kappaxi--26e1ec221efc2a0ca8c5971b.md) | 338 | `result-track:26e1ec221efc2a0ca8c5971b2306682eb780bbfc311c98b3d1ba707b9aaba87f` |
| 23 | `theorem` | [exists_lt_one_pos](../../../../../mathematics/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean/declarations/exists-lt-one-pos--b25dd077593bbd57192532be.md) | 345 | `result-track:b25dd077593bbd57192532be9f155f2a935e428f0b69da1ccfeb592fa586276c` |
| 24 | `theorem` | [eps_form_of_continuousOn](../../../../../mathematics/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean/declarations/eps-form-of-continuouson--9a34ca6e642196fcb0953cdc.md) | 364 | `result-track:9a34ca6e642196fcb0953cdcdbca100d707d4f11eead8436ace1995245aee957` |
| 25 | `theorem` | [windowProfile_vFlat](../../../../../mathematics/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean/declarations/windowprofile-vflat--a05ef2b194165afbadc62ca8.md) | 378 | `result-track:a05ef2b194165afbadc62ca8382ebe50f7d3e8c74a9bcbd70316f6dcb21fa165` |
| 26 | `theorem` | [windowProfile_vQuartic](../../../../../mathematics/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean/declarations/windowprofile-vquartic--a0d42c8e2365a042ca2e8871.md) | 384 | `result-track:a0d42c8e2365a042ca2e8871a356331a32cef9c20f2ac775ac7a462dd8b0dd62` |
| 27 | `theorem` | [continuousOn_kappaXi_vFlat](../../../../../mathematics/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean/declarations/continuouson-kappaxi-vflat--ec0532e09fb519222047752b.md) | 391 | `result-track:ec0532e09fb519222047752be622daf877e38b06ce44cf2bf97f5bce42932c14` |
| 28 | `theorem` | [continuousOn_kappaXi_vQuartic](../../../../../mathematics/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean/declarations/continuouson-kappaxi-vquartic--9c9136132d9a670270e120be.md) | 395 | `result-track:9c9136132d9a670270e120be2b1c14426d56543b9d5591ecaca7c535175c96e8` |
| 29 | `theorem` | [cWin_D1_vFlat_pos](../../../../../mathematics/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean/declarations/cwin-d1-vflat-pos--d3a7230c1418e93b2bde9945.md) | 399 | `result-track:d3a7230c1418e93b2bde9945b2df53b558db9e209c3566e5f3986df357985ed6` |
| 30 | `theorem` | [cWin_D1_vQuartic_pos](../../../../../mathematics/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean/declarations/cwin-d1-vquartic-pos--be5d1b6765031a964d4adfd2.md) | 402 | `result-track:be5d1b6765031a964d4adfd2a5a7a7da021f8828e283331ed5d4875101e9c941` |
| 31 | `theorem` | [kappaXi_pos_vFlat](../../../../../mathematics/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean/declarations/kappaxi-pos-vflat--5c0003be02128c1a8a9de4e1.md) | 406 | `result-track:5c0003be02128c1a8a9de4e1dd58ee82e8b95fd1ff83301bb9b5c77c3ec0e192` |
| 32 | `theorem` | [kappaXi_pos_vQuartic](../../../../../mathematics/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean/declarations/kappaxi-pos-vquartic--0766dbf0a80147fe2fa16cd6.md) | 409 | `result-track:0766dbf0a80147fe2fa16cd6414e99511e7ac19daa1960678e5f8d60693b9974` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
