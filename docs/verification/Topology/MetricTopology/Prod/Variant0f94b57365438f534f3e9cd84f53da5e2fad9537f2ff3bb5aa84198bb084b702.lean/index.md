# Verification target: GRWTSK.Topology.MetricTopology.Prod.Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "079ab8787526947723b72f417daf569188f7b77c",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `079ab8787526947723b72f417daf569188f7b77c`.

Source path: `GRWTSK/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.QuadraticForm.IsometryEquiv` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prod](../../../../../mathematics/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/declarations/prod--33f29eb8bdec288ccabb5394.md) | 51 | `declaration-track:33f29eb8bdec288ccabb53940071dd19a95997996bbd4a92804f485f7a2e76c9` |
| 2 | `def` | [IsometryEquiv.prod](../../../../../mathematics/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/declarations/isometryequiv-prod--4765f5a49b8155c0ed4bc009.md) | 57 | `declaration-track:4765f5a49b8155c0ed4bc0097785ffa84d14b3a89da3c9f00fe365e038da98e7` |
| 3 | `def` | [Isometry.inl](../../../../../mathematics/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/declarations/isometry-inl--2d994c26f256c3257baf97b5.md) | 67 | `declaration-track:2d994c26f256c3257baf97b5a0e5e6103531953d832d8b428a73819abb4bb548` |
| 4 | `def` | [Isometry.inr](../../../../../mathematics/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/declarations/isometry-inr--5390e0bcd79269d7decaf3ce.md) | 73 | `declaration-track:5390e0bcd79269d7decaf3ce434a498b0f066637ed30fc2e3cf30016c36ed606` |
| 5 | `def` | [Isometry.fst](../../../../../mathematics/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/declarations/isometry-fst--c00df997d8c7505332ce7b30.md) | 80 | `declaration-track:c00df997d8c7505332ce7b30d0aea4329357a3dd98570531ef742173f652964c` |
| 6 | `def` | [Isometry.snd](../../../../../mathematics/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/declarations/isometry-snd--f647fba6c547dd92d3fd3584.md) | 87 | `declaration-track:f647fba6c547dd92d3fd3584e734c7de0f1db3817fc44a60cb0c64d5d87fb3f2` |
| 7 | `lemma` | [Isometry.fst_comp_inl](../../../../../mathematics/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/declarations/isometry-fst-comp-inl--a99fbb4b55a1654c6d0adb6e.md) | 92 | `result-track:a99fbb4b55a1654c6d0adb6e9a0fc152c850432b3a2ff3235241581fe557522e` |
| 8 | `lemma` | [Isometry.snd_comp_inr](../../../../../mathematics/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/declarations/isometry-snd-comp-inr--4eff9f4e33ff1bd29393faaa.md) | 97 | `result-track:4eff9f4e33ff1bd29393faaaebd96e22873bb774419bd400e66c467b283931da` |
| 9 | `lemma` | [Isometry.snd_comp_inl](../../../../../mathematics/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/declarations/isometry-snd-comp-inl--758344c0ca4069017fba0275.md) | 102 | `result-track:758344c0ca4069017fba02758c66ae1872aa9aa44b04b2ae370681830c798207` |
| 10 | `lemma` | [Isometry.fst_comp_inr](../../../../../mathematics/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/declarations/isometry-fst-comp-inr--7ca53a76bc5220518f642f90.md) | 107 | `result-track:7ca53a76bc5220518f642f9032a7606085225290b46815a23c0327161a256c76` |
| 11 | `theorem` | [Equivalent.prod](../../../../../mathematics/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/declarations/equivalent-prod--659e5aec0fa47e8219323831.md) | 111 | `result-track:659e5aec0fa47e8219323831b7d1bc30ab1b5422137b8eb978d446421b17bf4d` |
| 12 | `def` | [IsometryEquiv.prodComm](../../../../../mathematics/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/declarations/isometryequiv-prodcomm--f315e23f2f14b54f689b3eea.md) | 118 | `declaration-track:f315e23f2f14b54f689b3eea4a53613868673084899d0ce3bca5bd57931f7279` |
| 13 | `def` | [IsometryEquiv.prodProdProdComm](../../../../../mathematics/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/declarations/isometryequiv-prodprodprodcomm--bcf69efc7a072667ba441b09.md) | 125 | `declaration-track:bcf69efc7a072667ba441b09da881759f16ca4a41fe227f5a5c64f26b4dd129c` |
| 14 | `theorem` | [anisotropic_of_prod](../../../../../mathematics/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/declarations/anisotropic-of-prod--9f302a2eb8c29bb848d31e1c.md) | 133 | `result-track:9f302a2eb8c29bb848d31e1c6161ba6e401da4b5225b5d717de088d9d8ad87dd` |
| 15 | `theorem` | [nonneg_prod_iff](../../../../../mathematics/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/declarations/nonneg-prod-iff--1069eab8a1bbcefb1697f961.md) | 145 | `result-track:1069eab8a1bbcefb1697f961d8483dc065845c1a9d75f759c2ba9082044c626f` |
| 16 | `theorem` | [posDef_prod_iff](../../../../../mathematics/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/declarations/posdef-prod-iff--2f9f19d930a40967d1b51d55.md) | 157 | `result-track:2f9f19d930a40967d1b51d553ade935281d5877c2adf09eb5d070f1616fe4481` |
| 17 | `theorem` | [PosDef.prod](../../../../../mathematics/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/declarations/posdef-prod--345a4ab9a2fb2d23dd1c7ec4.md) | 171 | `result-track:345a4ab9a2fb2d23dd1c7ec40287de1ba0a4d845a8aad666225733d3eb0809ca` |
| 18 | `theorem` | [IsOrtho.prod](../../../../../mathematics/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/declarations/isortho-prod--0bd08623d91ed20d9621eb7e.md) | 176 | `result-track:0bd08623d91ed20d9621eb7e8f6716fdaa2f184646b1101a3735aca75856d2eb` |
| 19 | `theorem` | [IsOrtho.inl_inr](../../../../../mathematics/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/declarations/isortho-inl-inr--862dc264fdf37bc8ef7f0069.md) | 181 | `result-track:862dc264fdf37bc8ef7f0069167a25974026be057ac5f824feb85aceeebd6494` |
| 20 | `theorem` | [IsOrtho.inr_inl](../../../../../mathematics/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/declarations/isortho-inr-inl--8488596ea0bc2d08d17e06d3.md) | 186 | `result-track:8488596ea0bc2d08d17e06d3986836baad2120c1cea89d330f996a0fc7a0a709` |
| 21 | `theorem` | [isOrtho_inl_inl_iff](../../../../../mathematics/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/declarations/isortho-inl-inl-iff--3396634bcfd1b866f9ca5b64.md) | 190 | `result-track:3396634bcfd1b866f9ca5b64aadc82ae9fdfd4a6fffa110b483f054c4743f39c` |
| 22 | `theorem` | [isOrtho_inr_inr_iff](../../../../../mathematics/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/declarations/isortho-inr-inr-iff--4836aeee9d6530c4133e1da9.md) | 195 | `result-track:4836aeee9d6530c4133e1da931e158280a158d2ad49127af9316e39fd10b8fca` |
| 23 | `theorem` | [polar_prod](../../../../../mathematics/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/declarations/polar-prod--b39657b5a00ccd14ebc7cd24.md) | 208 | `result-track:b39657b5a00ccd14ebc7cd243df2f0ec5e8f974c88da4e35e689c83b21a635c4` |
| 24 | `theorem` | [polarBilin_prod](../../../../../mathematics/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/declarations/polarbilin-prod--efd3352de58cf7f9bae422be.md) | 213 | `result-track:efd3352de58cf7f9bae422bec7393bc60be72bef6f213bca9cbdf9514fdc8c73` |
| 25 | `theorem` | [associated_prod](../../../../../mathematics/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/declarations/associated-prod--d4796bf976d21722e6b7e85e.md) | 219 | `result-track:d4796bf976d21722e6b7e85e22ba89dce0d5531c62e56c837f2cb040e0e5f3db` |
| 26 | `def` | [pi](../../../../../mathematics/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/declarations/pi--2242d10fb9f0e7d6144ad40d.md) | 240 | `declaration-track:2242d10fb9f0e7d6144ad40dec3fa9725a58f9abc8e4347b54af3a7143441051` |
| 27 | `theorem` | [pi_apply](../../../../../mathematics/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/declarations/pi-apply--ca506cffd16587bd88696a93.md) | 244 | `result-track:ca506cffd16587bd88696a932d714f3dbc77fb819e42cd0137f5b98a9d98d82b` |
| 28 | `theorem` | [pi_apply_single](../../../../../mathematics/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/declarations/pi-apply-single--af1dcd0d8987312a2534f5b6.md) | 248 | `result-track:af1dcd0d8987312a2534f5b62bba7f8cc2ab43fea2f8558cfdedbf4daabfb226` |
| 29 | `def` | [IsometryEquiv.pi](../../../../../mathematics/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/declarations/isometryequiv-pi--c2ebc4c82b193a6724fc0597.md) | 257 | `declaration-track:c2ebc4c82b193a6724fc0597210a6a7df3826de8b143438e8f21ba9935770248` |
| 30 | `def` | [Isometry.single](../../../../../mathematics/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/declarations/isometry-single--f79524576d31b11286fc8929.md) | 267 | `declaration-track:f79524576d31b11286fc89299186c7095f910de14829d97e2422d82b968f3edc` |
| 31 | `def` | [Isometry.proj](../../../../../mathematics/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/declarations/isometry-proj--e7a38e6b3726e6aa6f675013.md) | 274 | `declaration-track:e7a38e6b3726e6aa6f675013c94fde1ee5f9f0c38ef61563f0b5f4da6e77d723` |
| 32 | `theorem` | [Isometry.proj_comp_single_of_same](../../../../../mathematics/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/declarations/isometry-proj-comp-single-of-same--04c5eea470e4b9f5ccaad8d9.md) | 284 | `result-track:04c5eea470e4b9f5ccaad8d941784e909e02cd3b960f93f4ad5ff72f88ea4cb6` |
| 33 | `theorem` | [Isometry.proj_comp_single_of_ne](../../../../../mathematics/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/declarations/isometry-proj-comp-single-of-ne--471990928156eb2b7d9cba96.md) | 291 | `result-track:471990928156eb2b7d9cba969806af8a2aed3373e5a4b094cb628cd57f9e1194` |
| 34 | `theorem` | [Equivalent.pi](../../../../../mathematics/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/declarations/equivalent-pi--69c4971d4f122cef25edc103.md) | 296 | `result-track:69c4971d4f122cef25edc1031e69828ff4016e2b1c104209a290fc60470de348` |
| 35 | `theorem` | [anisotropic_of_pi](../../../../../mathematics/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/declarations/anisotropic-of-pi--66597e80387354a46a5b043f.md) | 302 | `result-track:66597e80387354a46a5b043fd48384594ab7db261db75f08d549884fc21f7745` |
| 36 | `theorem` | [nonneg_pi_iff](../../../../../mathematics/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/declarations/nonneg-pi-iff--4f14f4aaf29ec0ca83714528.md) | 316 | `result-track:4f14f4aaf29ec0ca837145284340c9ac297742133cad4b1cb84ae9c4d120adc5` |
| 37 | `theorem` | [posDef_pi_iff](../../../../../mathematics/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/declarations/posdef-pi-iff--0b55a8b68057f9de22423983.md) | 330 | `result-track:0b55a8b68057f9de224239830afa9d4bc6beefad6dc5edf43bd8869ff3cabe89` |
| 38 | `theorem` | [polar_pi](../../../../../mathematics/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/declarations/polar-pi--1c1ffd8f3fdfa206f5f88146.md) | 351 | `result-track:1c1ffd8f3fdfa206f5f8814662aa2dcd9736470e4da288a7040681a3d9ac30fb` |
| 39 | `theorem` | [polarBilin_pi](../../../../../mathematics/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/declarations/polarbilin-pi--2e19c3a4a3b05bfd1b089ed7.md) | 356 | `result-track:2e19c3a4a3b05bfd1b089ed729b9cdca6a025874db83228616c856df7f9a2050` |
| 40 | `theorem` | [associated_pi](../../../../../mathematics/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/declarations/associated-pi--8a5ecedda2c47d7e8788a865.md) | 360 | `result-track:8a5ecedda2c47d7e8788a8650bc1a08ac75964cf89d745195c4c4666ffd480da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
