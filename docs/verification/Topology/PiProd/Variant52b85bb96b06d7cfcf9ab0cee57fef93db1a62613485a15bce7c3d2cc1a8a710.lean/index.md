# Verification target: GRWTSK.Topology.PiProd.Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4962f4f19d04db13dd05aca3a9e14384d475a9b0",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/index.md) · [Full source](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4962f4f19d04db13dd05aca3a9e14384d475a9b0`.

Source path: `GRWTSK/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prod](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/prod--6c0f4f502beb9e8e86f0ed57.md) | 93 | `declaration-track:6c0f4f502beb9e8e86f0ed570e8c68d6acd01b53cc6a52ce8e2c4c56e5366179` |
| 2 | `theorem` | [coe_prod](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/coe-prod--080301e4caa7581bb757514b.md) | 98 | `result-track:080301e4caa7581bb757514b4e8bf54c73ea8a525f3b0db8ae2ac6ec4bd67aab` |
| 3 | `theorem` | [prod_apply](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/prod-apply--27ad0b062cac9c3a9afc299d.md) | 103 | `result-track:27ad0b062cac9c3a9afc299dbff72e5f4e82d82f996c9b0addc9e03bec1de96e` |
| 4 | `def` | [inl](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/inl--9b9dffed2472861166bfd86c.md) | 112 | `declaration-track:9b9dffed2472861166bfd86c3f7c7b99eac696722e5b8464d4096d0b9dd0216b` |
| 5 | `def` | [inr](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/inr--c0f25962d3045cdd0a8e48d1.md) | 116 | `declaration-track:c0f25962d3045cdd0a8e48d1d4ab7091f54ebecdfb103b8fc7eb9fc1247204db` |
| 6 | `theorem` | [inl_apply](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/inl-apply--4442a99c6790221ea261d38e.md) | 122 | `result-track:4442a99c6790221ea261d38e067478b785197862327a0be1ab3f145b292d469a` |
| 7 | `theorem` | [inr_apply](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/inr-apply--3db382fe16b068862518c80e.md) | 126 | `result-track:3db382fe16b068862518c80ef4fc34ea9e96bf3f0bae69dfdc9c92390f571196` |
| 8 | `theorem` | [coe_inl](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/coe-inl--8087d89f62c92d1231a87d89.md) | 130 | `result-track:8087d89f62c92d1231a87d89880a8622d6331e3497793494b3c7886ebfb3ea16` |
| 9 | `theorem` | [coe_inr](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/coe-inr--d1b96b4fb1474eb10d535ba2.md) | 134 | `result-track:d1b96b4fb1474eb10d535ba2ffc0f869237e816c08eea3204357f7087eb95809` |
| 10 | `lemma` | [comp_inl_add_comp_inr](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/comp-inl-add-comp-inr--ebe3c45ca79f5c88b0bda221.md) | 137 | `result-track:ebe3c45ca79f5c88b0bda2219e9c467b19d5ec152b260281eb637dd7e84fc7a2` |
| 11 | `theorem` | [ker_prod](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/ker-prod--1c73fbf9a503b6bcca97173e.md) | 140 | `result-track:1c73fbf9a503b6bcca97173e1e08a54bf66f364e72dfd518383fad1e983ba60e` |
| 12 | `def` | [fst](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/fst--603c644f24105d58c3b52143.md) | 147 | `declaration-track:603c644f24105d58c3b521434295f2d41e231d360afab9ba7a1d8098e487075f` |
| 13 | `def` | [snd](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/snd--1b668deb0d5634543cfd1e9b.md) | 151 | `declaration-track:1b668deb0d5634543cfd1e9b82a43d140cc0a013c0e6aae97db75979f79d1486` |
| 14 | `theorem` | [coe_fst](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/coe-fst--ee68dd5257b0fb076fa04f23.md) | 157 | `result-track:ee68dd5257b0fb076fa04f23c9f79c5062e2dc092a7086456fced772a82dfb28` |
| 15 | `theorem` | [coe_fst'](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/coe-fst--ff6de83d7e7c745f217603c9.md) | 161 | `result-track:ff6de83d7e7c745f217603c9ba3a0935b7f58bdba18d0ede10842fcdff624509` |
| 16 | `theorem` | [coe_snd](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/coe-snd--1d89225b48d1bbb752dadba0.md) | 165 | `result-track:1d89225b48d1bbb752dadba00d957cb381adcbc63ba7c427648ce0056187a44f` |
| 17 | `theorem` | [coe_snd'](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/coe-snd--1a913da4a440892e4de88e63.md) | 169 | `result-track:1a913da4a440892e4de88e6398d1e93efbc1e70633d945edab1e68411354601d` |
| 18 | `theorem` | [fst_prod_snd](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/fst-prod-snd--03e5f7f732fcd333817725f7.md) | 173 | `result-track:03e5f7f732fcd333817725f7cf857ccbacac147aa1239609086f95ea46d9de76` |
| 19 | `theorem` | [fst_comp_prod](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/fst-comp-prod--2a083a542d92e7c94b13985a.md) | 177 | `result-track:2a083a542d92e7c94b13985a6a89fd92f33e090d1548ef8c65c32092ad5b7c0e` |
| 20 | `theorem` | [snd_comp_prod](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/snd-comp-prod--141e350efa919e99085af56d.md) | 182 | `result-track:141e350efa919e99085af56dcd143168246c03c090aa4998110770c2df891886` |
| 21 | `theorem` | [fst_comp_inl](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/fst-comp-inl--1821677d7475b76237cdb765.md) | 186 | `result-track:1821677d7475b76237cdb7656002ea036080a0282c9384af554c47568d1754f0` |
| 22 | `theorem` | [fst_comp_inr](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/fst-comp-inr--da4e44ad7b9a90de02710754.md) | 187 | `result-track:da4e44ad7b9a90de02710754e2bc716c01886b784abbdfc36a32bfa9ae9c80b2` |
| 23 | `theorem` | [snd_comp_inl](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/snd-comp-inl--afdfac35d18486280295e281.md) | 188 | `result-track:afdfac35d18486280295e281575b5f4001178e22764c273ae5cceb5102644601` |
| 24 | `theorem` | [snd_comp_inr](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/snd-comp-inr--e0d38311abbcdc28c4cf7af6.md) | 189 | `result-track:e0d38311abbcdc28c4cf7af69a22a5a6864f9c7f6a7b9ec4cace10ace8cfaaf8` |
| 25 | `def` | [prodMap](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/prodmap--81bb5c3b81a904d8c84a4c19.md) | 192 | `declaration-track:81bb5c3b81a904d8c84a4c1998e73c07ff48624ad2f2550af02aaedb051d299a` |
| 26 | `theorem` | [coe_prodMap](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/coe-prodmap--2f22c289fa85b7cdd35e5640.md) | 197 | `result-track:2f22c289fa85b7cdd35e56407e360a0aefe45011a4b5d170d6651b495b5b01c9` |
| 27 | `theorem` | [coe_prodMap'](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/coe-prodmap--2d72210b8ac9edcd3aa66ca5.md) | 202 | `result-track:2d72210b8ac9edcd3aa66ca5394a0557e63f994c4b87981a920b3b732dc3b9a3` |
| 28 | `def` | [pi](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/pi--14fb0e3d2cb01f3de7f917d6.md) | 216 | `declaration-track:14fb0e3d2cb01f3de7f917d6cb9b3c64d2f41c392935b5b92715c5b5bf9e770f` |
| 29 | `theorem` | [coe_pi'](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/coe-pi--bd54b755eca8208a66a5e8b1.md) | 220 | `result-track:bd54b755eca8208a66a5e8b182d8e87801256f996aa2ef2b53a5742bc2a7e588` |
| 30 | `theorem` | [coe_pi](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/coe-pi--3147ee3f2ea396ae8e1cb26b.md) | 224 | `result-track:3147ee3f2ea396ae8e1cb26bda613281270dd305ec8a1626d763c215dc08c5b8` |
| 31 | `theorem` | [pi_apply](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/pi-apply--b661f3c31f9c8c2d476a4e97.md) | 227 | `result-track:b661f3c31f9c8c2d476a4e9724eb766938ba3a6eed3f34c98ebf08c81303170b` |
| 32 | `theorem` | [pi_eq_zero](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/pi-eq-zero--281d8f3fc21f6ba286c8b115.md) | 230 | `result-track:281d8f3fc21f6ba286c8b11520a1a479114e72f975c109c617472f5cad16305d` |
| 33 | `theorem` | [pi_zero](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/pi-zero--f861a4ba5efaf2f72b683a87.md) | 234 | `result-track:f861a4ba5efaf2f72b683a87df8250ac7f75545b83d5562042627ab3c54985c9` |
| 34 | `theorem` | [pi_comp](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/pi-comp--bc6fb507ada8b225d9ea9643.md) | 237 | `result-track:bc6fb507ada8b225d9ea96433b6353c93c01f8e2ced0aee2e8dac8a2d24002bd` |
| 35 | `def` | [proj](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/proj--01eccac0c2ff2594620e1fa0.md) | 242 | `declaration-track:01eccac0c2ff2594620e1fa0e664afae5cc5884517432e815ed65a74118f000a` |
| 36 | `theorem` | [proj_apply](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/proj-apply--653d38deeb785ffcdc78e397.md) | 246 | `result-track:653d38deeb785ffcdc78e397d47ffbc71fddc15f279a377e92505fd0557f39fb` |
| 37 | `theorem` | [proj_pi](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/proj-pi--0ab4eb99c052bc34bfe3d118.md) | 250 | `result-track:0ab4eb99c052bc34bfe3d118a71d4db86b973940f3e1889afbe34c6daef29533` |
| 38 | `theorem` | [coe_proj](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/coe-proj--e56f06e916367a595aab8c91.md) | 253 | `result-track:e56f06e916367a595aab8c91dbb9b86c9f19e21558072e9c0d91f08ea979abd0` |
| 39 | `theorem` | [pi_proj](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/pi-proj--b70f6eaba3e1e4180432f39a.md) | 257 | `result-track:b70f6eaba3e1e4180432f39a835fea9d8c334dfeea4c5d8c36a5e49d114ece15` |
| 40 | `theorem` | [pi_proj_comp](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/pi-proj-comp--fece871bf602cba191994d74.md) | 260 | `result-track:fece871bf602cba191994d74f56013231f6847576ea8281f724b35dbc20eddaf` |
| 41 | `theorem` | [iInf_ker_proj](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/iinf-ker-proj--89083307153eb4a27c3d0fe7.md) | 262 | `result-track:89083307153eb4a27c3d0fe7a36b59371b850d9691939112a19bf2ebf5e28836` |
| 42 | `def` | [piMap](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/pimap--3e5a52790b96a954ef79c341.md) | 276 | `declaration-track:3e5a52790b96a954ef79c34178bf5f6d1a3044d38167ccae0399d9f1d4f99c38` |
| 43 | `theorem` | [coe_piMap](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/coe-pimap--e5c626d466b6db6701b4b338.md) | 280 | `result-track:e5c626d466b6db6701b4b338bcee987dbdfd2644214a9ad188acf9d6945fe1d4` |
| 44 | `theorem` | [coe_piMap'](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/coe-pimap--8090299b1e76b795915b1d70.md) | 285 | `result-track:8090299b1e76b795915b1d7089e773c2fae58fa8b017fe97aaa43e2436d2011b` |
| 45 | `def` | [_root_.GRWTSK.Topology.Prod.Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.Pi.compRightL](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/root-grwtsk-topology-prod-variant985774fe0f23cb1458806938f73fe158d9b9fe3--a4ee42656dc940f9ce85ca21.md) | 294 | `declaration-track:a4ee42656dc940f9ce85ca214ee3730b98653f6d3d4bffa73f76f6a38d28d21c` |
| 46 | `lemma` | [_root_.GRWTSK.Topology.Prod.Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.Pi.compRightL_apply](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/root-grwtsk-topology-prod-variant985774fe0f23cb1458806938f73fe158d9b9fe3--31494989f294749deeebd3e2.md) | 299 | `result-track:31494989f294749deeebd3e2ea988b4a5a8e2314e422a48a57190cd9aebe05dc` |
| 47 | `def` | [single](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/single--9f6fe64f33e1e2bb80db623a.md) | 304 | `declaration-track:9f6fe64f33e1e2bb80db623a5f87aee32708f2c1344ea02146a23a7e544c69a5` |
| 48 | `lemma` | [sum_comp_single](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/sum-comp-single--f7eb46f227b1fe25d1d73f89.md) | 307 | `result-track:f7eb46f227b1fe25d1d73f89112b6695b8e9760f2b163bd5e220eeb5726d726f` |
| 49 | `theorem` | [range_prod_eq](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/range-prod-eq--4a77c6e2cf08603f86dfa6df.md) | 320 | `result-track:4a77c6e2cf08603f86dfa6df8fd94c582f31a567a74085fb5ffeaa47582e84ca` |
| 50 | `theorem` | [ker_prod_ker_le_ker_coprod](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/ker-prod-ker-le-ker-coprod--42e75bab33f2d3e6281753ba.md) | 324 | `result-track:42e75bab33f2d3e6281753bad0a2103885f069ebfb2f2111f84c824a0a082af4` |
| 51 | `def` | [prodEquiv](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/prodequiv--4dcd048c94df25bde867d089.md) | 340 | `declaration-track:4dcd048c94df25bde867d08927f8d8104d127509d1335586059378dc87fda7a9` |
| 52 | `theorem` | [prod_ext_iff](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/prod-ext-iff--4d54d0e88e1a66136567ec1a.md) | 344 | `result-track:4d54d0e88e1a66136567ec1af32150b1e5c6f680110ea3091760c9adc6f39675` |
| 53 | `theorem` | [prod_ext](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/prod-ext--d87f3dab9ce05590cfcf1a37.md) | 350 | `result-track:d87f3dab9ce05590cfcf1a3745d078b23fec9ae7bf2fc3647ca582fffa4ec019` |
| 54 | `def` | [prodₗ](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/prod--25277b18aa42d4738c27100b.md) | 362 | `declaration-track:25277b18aa42d4738c27100b87d45484ffd1d3809dcb9c00f6ffe68232995437` |
| 55 | `def` | [coprod](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/coprod--117afb55271327ae45d3a80e.md) | 381 | `declaration-track:117afb55271327ae45d3a80eb5de1547a93081c1df3ebf754a4f7dda43b59eca` |
| 56 | `lemma` | [coprod_add](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/coprod-add--4dae47b196e94396641a0362.md) | 384 | `result-track:4dae47b196e94396641a0362af114dbca06f4bb9ca14bf0474e98c7c1e0ed3de` |
| 57 | `lemma` | [range_coprod](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/range-coprod--49f2459476306096eb357afc.md) | 387 | `result-track:49f2459476306096eb357afcc851844916ae913492ed9e8149d7d9970aefabb3` |
| 58 | `lemma` | [comp_fst_add_comp_snd](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/comp-fst-add-comp-snd--afd0c27fbba96cad40ca41e3.md) | 390 | `result-track:afd0c27fbba96cad40ca41e34432e746c97c2faa1a43a62d94e6199cc80de081` |
| 59 | `lemma` | [comp_coprod](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/comp-coprod--2b792b04df4e0e31d2cbac34.md) | 393 | `result-track:2b792b04df4e0e31d2cbac34270c3836271380d346d7b0ef0fc113f7bbe99a42` |
| 60 | `lemma` | [coprod_comp_inl](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/coprod-comp-inl--69936594508f8529146a7fd9.md) | 397 | `result-track:69936594508f8529146a7fd950bdcdeee741920260c9c69c6be38579b06ed098` |
| 61 | `lemma` | [coprod_comp_inr](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/coprod-comp-inr--aa31dce60e30a59c3c89fe1c.md) | 400 | `result-track:aa31dce60e30a59c3c89fe1c8ddeaa916f9e8a6450591357490b161918ef99a0` |
| 62 | `lemma` | [coprod_inl_inr](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/coprod-inl-inr--e0434942805407272b751ea5.md) | 404 | `result-track:e0434942805407272b751ea5e3e1ae1a59b4be8fa24d7d51205552b8b9fa292f` |
| 63 | `lemma` | [coprod_comp_inl_inr](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/coprod-comp-inl-inr--e26749f64877f58cb5f96f34.md) | 408 | `result-track:e26749f64877f58cb5f96f34407c9b68e6f74a3dc87fa0219106ca880c7e1c81` |
| 64 | `def` | [coprodEquiv](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/coprodequiv--031e2e6ecd920ca3b48bf530.md) | 419 | `declaration-track:031e2e6ecd920ca3b48bf530ae0f68566814bb671bca34f206fd19c1014f3a97` |
| 65 | `lemma` | [ker_coprod_of_disjoint_range](../../../../mathematics/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/declarations/ker-coprod-of-disjoint-range--7f81ff2a06a45e7bd4a0aa12.md) | 438 | `result-track:7f81ff2a06a45e7bd4a0aa125e15d878275b818652af0a123ee2ff20ec107064` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
