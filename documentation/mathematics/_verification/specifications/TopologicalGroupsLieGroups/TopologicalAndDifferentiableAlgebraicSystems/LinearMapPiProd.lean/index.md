# Verification target: Linear Map Pi Prod

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c0cb3744fbde6ff7c1e0c6dfc4495f964f898e8",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LinearMapPiProd/Variant3177f53a0567409c0bcfc5263bf1b180117b00a1a2eab20cd0202afe817e5a68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c0cb3744fbde6ff7c1e0c6dfc4495f964f898e8`.

Source path: `GRWTSK/Topology/GeneralTopology/LinearMapPiProd/Variant3177f53a0567409c0bcfc5263bf1b180117b00a1a2eab20cd0202afe817e5a68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LinearMapPiProd/Variant3177f53a0567409c0bcfc5263bf1b180117b00a1a2eab20cd0202afe817e5a68.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Module.LinearMap` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/prod-source-edition-2.md) | 36 | `declaration-track:574e7c433293159848a03bb15633ed3fbe92f77a2d778b8dc31fb14950124277` |
| 2 | `theorem` | [coe_prod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/coe-prod.md) | 41 | `result-track:0bed5d2f322ff00ab6c7833c7ea0812bb9d4a52ce41bfae474189cefd2eb1e8e` |
| 3 | `theorem` | [prod_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/prod-apply.md) | 46 | `result-track:8af7f78c35d629d3254f14b553365eb53dda29dd9ff87b2a175bcc4303c95f7e` |
| 4 | `def` | [inl](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/inl.md) | 55 | `declaration-track:8739190075ac5abcf3f4f78cb9fe59bbd1928c914db243aed462642b350ac572` |
| 5 | `def` | [inr](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/inr.md) | 59 | `declaration-track:8eef37e10a9643440b4e965c04260d2ca3f8ee1ee16035fb7e269365411d316c` |
| 6 | `theorem` | [inl_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/inl-apply.md) | 65 | `result-track:23ab15bcc2f223d16a47afad5c1a0275961a9098ae5bc274e85eb5d0eff97490` |
| 7 | `theorem` | [inr_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/inr-apply.md) | 69 | `result-track:c080298f41b77b3162aa4d8d2cc3732bdfa63fa9976778ea280074369b65dca4` |
| 8 | `theorem` | [coe_inl](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/coe-inl.md) | 73 | `result-track:d65ce3b43bf62b36874432e0dce69e7cd8fc5ac300127804f9793da8c81e967b` |
| 9 | `theorem` | [coe_inr](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/coe-inr.md) | 77 | `result-track:8fde6e0eab621ad60c17b3f752d6655c0914ba37a87773e3ecd6817e7bbf427f` |
| 10 | `lemma` | [comp_inl_add_comp_inr](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/comp-inl-add-comp-inr.md) | 80 | `result-track:cac2af51f0923ded1e1c5fd5bf1deed3f05954d553c9ae93b6ac7930aa10f2f0` |
| 11 | `theorem` | [ker_prod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/ker-prod.md) | 84 | `result-track:40ec3519b1c06613f2d0df4e67d44f4d6e402c0cdcc34b051436f0ae53d70977` |
| 12 | `def` | [fst](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/fst.md) | 91 | `declaration-track:ac4cfca184e3f4948bee0f23d7828fd4b9d7872a5bd7a05b99b44c7cad095e01` |
| 13 | `def` | [snd](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/snd.md) | 96 | `declaration-track:ffe82b3347f8df8d67f8d3108925faf247b4804003a4b5f1515a10a54e0612f6` |
| 14 | `theorem` | [coe_fst](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/coe-fst.md) | 103 | `result-track:2d3fefdf9e78fffe89fb8decf48dee97233cc732a22bc78c5ad4b6371a869f61` |
| 15 | `theorem` | [coe_fst'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/coe-fst-source-edition-2.md) | 107 | `result-track:71db606f5427b87c781e46bfcf823201683e06d515be817d76a3c7ccbd8e1147` |
| 16 | `theorem` | [coe_snd](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/coe-snd-source-edition-2.md) | 111 | `result-track:9eec55aa45d90ed6be648becfb63772b2c4ffbec70a3d9535ee3e90c1d50e669` |
| 17 | `theorem` | [coe_snd'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/coe-snd.md) | 115 | `result-track:08d1ac9cc4b1da7f8fd7e5043eaef2148364e2bf3120b69684ee8fea807b67d9` |
| 18 | `theorem` | [fst_prod_snd](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/fst-prod-snd.md) | 119 | `result-track:0e49f266351dde3433bb9ce4856af66cb6c334d149b794347ae9699a1930b01d` |
| 19 | `theorem` | [fst_comp_prod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/fst-comp-prod.md) | 123 | `result-track:3ae499ca02d91894958a10f81acacac3071e59e329978e79befbe4f6f4e7599f` |
| 20 | `theorem` | [snd_comp_prod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/snd-comp-prod.md) | 128 | `result-track:6b66f371cd2384a348c31b3c7e5c1486dbbefb3d48ccc55839a697221d36d9f9` |
| 21 | `def` | [prodMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/prodmap.md) | 133 | `declaration-track:57365764e05e522c779c7a42e93222c5228e78bdc4624141672b133fe332b728` |
| 22 | `theorem` | [coe_prodMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/coe-prodmap.md) | 138 | `result-track:03c4af8d6de21715bd2733de1ee3275b2430fc3c5cde635647d36500f8312313` |
| 23 | `theorem` | [coe_prodMap'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/coe-prodmap-source-edition-2.md) | 143 | `result-track:151ebafa7c726262e09c82a73997ea900f1dac8870e3d311bd63e52298458e40` |
| 24 | `def` | [pi](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/pi.md) | 157 | `declaration-track:5479ae741f7217c8527ab054faada2fad722e16ed6af33420d7ac9259e42c15d` |
| 25 | `theorem` | [coe_pi'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/coe-pi-source-edition-2.md) | 161 | `result-track:f864c6d0de42f58b4a02aceaadbf48658cfe7b8cf1210d3bcf3c3a5389c95a6a` |
| 26 | `theorem` | [coe_pi](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/coe-pi.md) | 165 | `result-track:6dee945407eda6f5dc7bc15daf07bfee3c00b9e5ae0914b1aaa06c4336629ff9` |
| 27 | `theorem` | [pi_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/pi-apply.md) | 168 | `result-track:800506f9a0ac344f7d46a76e7066436d16ec02a324e4c8d7dbafb36073c68688` |
| 28 | `theorem` | [pi_eq_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/pi-eq-zero.md) | 171 | `result-track:03952f0c8c14303927fd202b4b9879d592ec9bcb9db09b1ec9487c5468963c44` |
| 29 | `theorem` | [pi_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/pi-zero.md) | 175 | `result-track:4a34cb6a9a89665bf98ae9749cd6868228528715b5eccb69bf6854ae55b15bc3` |
| 30 | `theorem` | [pi_comp](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/pi-comp.md) | 178 | `result-track:568d66aafc586245ddd91d3207b91cb8e9cdde88cd4506c0c39fa39fb52093b8` |
| 31 | `def` | [proj](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/proj.md) | 183 | `declaration-track:f7f24b0f491c099078ec06e9d77042b3106e8f84bdfa82f358dbb83ff15b8458` |
| 32 | `theorem` | [proj_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/proj-apply.md) | 187 | `result-track:9abe0fc1361199eca22cd8cdb9c5a0b57caa91c0fedbc3558d0f102111df74f0` |
| 33 | `theorem` | [proj_pi](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/proj-pi.md) | 191 | `result-track:29138a1bd7844932b6502eff6f4cbdb261090ce31ef24a5cd795847e5f09cb62` |
| 34 | `theorem` | [coe_proj](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/coe-proj.md) | 194 | `result-track:bb155fba52471d6af980c3cff5c24079a9548d375adab158e4146e50b15c9b9d` |
| 35 | `theorem` | [pi_proj](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/pi-proj.md) | 198 | `result-track:3e4aff841c696e2f53d569a034c6559be690b1064e2ad70f2b254a6d0bd6fd68` |
| 36 | `theorem` | [pi_proj_comp](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/pi-proj-comp.md) | 201 | `result-track:fa0b12f2f4c0f7787bcd79ecdcde831c94dc986a6e3fb34e352156345d40f566` |
| 37 | `theorem` | [iInf_ker_proj](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/iinf-ker-proj.md) | 203 | `result-track:a9211d4e536e5a11601abd115368b7f1274f2cc7c2369099a45c8cb27574a720` |
| 38 | `def` | [_root_.Pi.compRightL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/root-pi-comprightl.md) | 210 | `declaration-track:974dc498e2d711c7f96abb5e2f5df2a5a82bedd5fe98158f4d4e6b3571d39300` |
| 39 | `lemma` | [_root_.Pi.compRightL_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/root-pi-comprightl-apply.md) | 216 | `result-track:0cf68b3bc2d7abc2e5fd150c69f1cbb8556668a9c5e467a8d5827ef86cb7c261` |
| 40 | `def` | [single](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/single.md) | 221 | `declaration-track:b64c8ff80ebf3a100fbf7dac21baf2b9dd0e17798db11a6ddea415555ac3aed7` |
| 41 | `theorem` | [range_prod_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/range-prod-eq.md) | 234 | `result-track:66a24dbbbac7b64892a5601c925c1ec5781a01c77244d13003ede5e9a7e94353` |
| 42 | `theorem` | [ker_prod_ker_le_ker_coprod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/ker-prod-ker-le-ker-coprod.md) | 238 | `result-track:f8a714eab36978a29d99dc627e295e2b17ca7bbceaf948d93d4dc2c5d143e0ea` |
| 43 | `def` | [prodEquiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/prodequiv.md) | 254 | `declaration-track:5c4c6b53992f4b2c711e0aa169d2eebb4678d9a088c69dba6a88e2b9b31cff86` |
| 44 | `theorem` | [prod_ext_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/prod-ext-iff.md) | 260 | `result-track:ee43ab1f596ca8fe138203c87954e4b408d92984a4237db987bcbc3454e541f3` |
| 45 | `theorem` | [prod_ext](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/prod-ext.md) | 266 | `result-track:f02d0577b3ffac990f3b8b4b5ea1a1d860acdcadc8f3fcf311ed922486abcbf7` |
| 46 | `def` | [prodₗ](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/prod.md) | 276 | `declaration-track:211af231c43205687a9b15e7a6143bb5f0674f917165a2a914eebe5fc6911d6d` |
| 47 | `def` | [coprod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/coprod.md) | 295 | `declaration-track:ab4364dd45385497a3cc3d9c2b0c277d9534c49d651934c45a5add12921303f6` |
| 48 | `lemma` | [coprod_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/coprod-add.md) | 298 | `result-track:807b62dba9777b2f30e9afbdbb2b9c0e652239fbe6bd2369e579edd45864b181` |
| 49 | `lemma` | [range_coprod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/range-coprod.md) | 301 | `result-track:2aea8697e26bc803baef7d10613ab36e5236ef814a27896bf3aeeb8a95919942` |
| 50 | `lemma` | [comp_fst_add_comp_snd](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/comp-fst-add-comp-snd.md) | 304 | `result-track:3a55209cd7407bde2703ead58e7c6591c29a913d3ae49f1ec6ef3e663b0c98ab` |
| 51 | `lemma` | [comp_coprod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/comp-coprod.md) | 307 | `result-track:6937b48dd08d7e11b0dcaf02c981874068ca8385727a06dc281dd660e58f1b42` |
| 52 | `lemma` | [coprod_comp_inl](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/coprod-comp-inl.md) | 311 | `result-track:1fb6b33f498242d1763b5ce7aad2890a4ebb1bde0e9686f3a8cda25bf1797cd5` |
| 53 | `lemma` | [coprod_comp_inr](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/coprod-comp-inr.md) | 314 | `result-track:b310c8fcd9c3634f9b58784840d261622a95f800538cacf10e92c8e66326130e` |
| 54 | `lemma` | [coprod_inl_inr](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/coprod-inl-inr.md) | 318 | `result-track:b58289674dfd1e9fa616dcd309a7e7d89c4292d8e61b632f380d79eb6eb096bb` |
| 55 | `def` | [coprodEquiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/coprodequiv.md) | 329 | `declaration-track:3d28b88913f6530cc1536d32ae0234b2f8a901378778175c62d75edc1186bc25` |
| 56 | `lemma` | [ker_coprod_of_disjoint_range](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapPiProd.lean/declarations/ker-coprod-of-disjoint-range.md) | 348 | `result-track:d202a65c9befafc620ca86d97857517850fb85240c04e7f9c999f1f4cb7d0956` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=14e61c3d32e15e283fc386bf8c63c6e70b6bbf9cf87e7d3df4fc9348d7329ba0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LinearMapPiProd/Variant3177f53a0567409c0bcfc5263bf1b180117b00a1a2eab20cd0202afe817e5a68.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/LinearMapPiProd/Variant3177f53a0567409c0bcfc5263bf1b180117b00a1a2eab20cd0202afe817e5a68.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
