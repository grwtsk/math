# Verification target: GRWTSK.Topology.GeneralTopology.Pi.Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00f0d9c35b6804483484ffb258b71cf3caeb697f",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00f0d9c35b6804483484ffb258b71cf3caeb697f`.

Source path: `GRWTSK/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Bases` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean/declarations/pi--9207f8840787fceb6267f6bd.md) | 36 | `declaration-track:9207f8840787fceb6267f6bdc168f9e11d721cdae6938bc103c3e5fb03840ce1` |
| 2 | `instance` | [pi.isCountablyGenerated](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean/declarations/pi-iscountablygenerated--04dab2f783ae7ad89cde701f.md) | 40 | `declaration-track:04dab2f783ae7ad89cde701f78acef62c12716576936fe5de034f51dac73807f` |
| 3 | `theorem` | [tendsto_eval_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean/declarations/tendsto-eval-pi--72ac63967f15a878498b0859.md) | 45 | `result-track:72ac63967f15a878498b08595f32ec3ceb64dae26c03dd6ce10a946d00dd097d` |
| 4 | `theorem` | [tendsto_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean/declarations/tendsto-pi--79090ec817dfb287157ad9a2.md) | 49 | `result-track:79090ec817dfb287157ad9a28a240c047e7a9e08739249f11eff82ae29779779` |
| 5 | `theorem` | [le_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean/declarations/le-pi--e4e3dc7377e4c67f7e8c0377.md) | 54 | `result-track:e4e3dc7377e4c67f7e8c03771c736f7032d73033c3fa28552b8f8e7538191518` |
| 6 | `theorem` | [pi_mono](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean/declarations/pi-mono--15cfc1320feb8322becd79db.md) | 59 | `result-track:15cfc1320feb8322becd79dbfc9a6aaa8b3a6ad2c393b29aa07a68f3cea6da81` |
| 7 | `theorem` | [mem_pi_of_mem](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean/declarations/mem-pi-of-mem--8a8cc1632bb104ced0b44504.md) | 63 | `result-track:8a8cc1632bb104ced0b445045b3ffc8071bdd3be5e262e97883d9530f100f07a` |
| 8 | `theorem` | [pi_mem_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean/declarations/pi-mem-pi--956b19f72f0edf81530216b2.md) | 67 | `result-track:956b19f72f0edf81530216b2e61c01b8d5aad2a736bda1d43d367dc1d7c79b68` |
| 9 | `theorem` | [mem_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean/declarations/mem-pi--6ada780f09dc935b3ddd4259.md) | 73 | `result-track:6ada780f09dc935b3ddd42595a7f43bd45540020047c06e013077d3ac1ba86c2` |
| 10 | `theorem` | [mem_pi'](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean/declarations/mem-pi--abc17410dc9f511ec53f0a99.md) | 84 | `result-track:abc17410dc9f511ec53f0a99d57d539ce79d1a05725341b6793644383a826d8d` |
| 11 | `theorem` | [mem_of_pi_mem_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean/declarations/mem-of-pi-mem-pi--400c1457a0ce97f027511250.md) | 89 | `result-track:400c1457a0ce97f02751125048d615cde942128c074440d33c21481e27052465` |
| 12 | `theorem` | [pi_mem_pi_iff](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean/declarations/pi-mem-pi-iff--6d42da460dcfb6d14b1a04b8.md) | 101 | `result-track:6d42da460dcfb6d14b1a04b89f7deb58e7471305f95d5078fe7036e5ae484c6e` |
| 13 | `theorem` | [hasBasis_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean/declarations/hasbasis-pi--354e5885c77d33ef69f7ee8f.md) | 106 | `result-track:354e5885c77d33ef69f7ee8fa8eb4cdc455853b07f483b6d13bb5d0c7c7850d7` |
| 14 | `theorem` | [pi_inf_principal_univ_pi_eq_bot](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean/declarations/pi-inf-principal-univ-pi-eq-bot--9fbf1f287c92e15e88461bb8.md) | 114 | `result-track:9fbf1f287c92e15e88461bb890e155795b0149e8f43d3aa4ea597029ae3ceb2a` |
| 15 | `theorem` | [pi_inf_principal_pi_eq_bot](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean/declarations/pi-inf-principal-pi-eq-bot--0b0c8de56dcaf23071020443.md) | 129 | `result-track:0b0c8de56dcaf23071020443ad772a3590b821589b63d0ab31df250386f8f517` |
| 16 | `theorem` | [pi_inf_principal_univ_pi_neBot](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean/declarations/pi-inf-principal-univ-pi-nebot--f3df728efe7fe3c17a1e094e.md) | 137 | `result-track:f3df728efe7fe3c17a1e094e3973128b079667fd8d46b79435dcb45afb3320ce` |
| 17 | `theorem` | [pi_inf_principal_pi_neBot](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean/declarations/pi-inf-principal-pi-nebot--6c77c008300a9b95a156756c.md) | 142 | `result-track:6c77c008300a9b95a156756cb1ff474dad3a0229bf9d5bf46c848e59a7366201` |
| 18 | `instance` | [PiInfPrincipalPi.neBot](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean/declarations/piinfprincipalpi-nebot--3029680de646b5504754e898.md) | 146 | `declaration-track:3029680de646b5504754e898d2251574c5389821361c0dd3ba397d23abd89296` |
| 19 | `theorem` | [pi_eq_bot](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean/declarations/pi-eq-bot--1a08907241dd40e66ffdd9b1.md) | 153 | `result-track:1a08907241dd40e66ffdd9b1788cfc5cb02cb067ae06ee6252c952d8404637aa` |
| 20 | `theorem` | [pi_neBot](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean/declarations/pi-nebot--87064a63b2e91369dcca4b43.md) | 158 | `result-track:87064a63b2e91369dcca4b437bd1341141f9234982bd880323ba6fa2047c1e3a` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean/declarations/instance--7d593f0e97f6200220b69726.md) | 161 | `declaration-track:7d593f0e97f6200220b697267abfc7fd1d0b9aa04413ad88a9cfbd7a0c83b35b` |
| 22 | `theorem` | [map_eval_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean/declarations/map-eval-pi--eb641706ee6f7219d5f7d4c9.md) | 165 | `result-track:eb641706ee6f7219d5f7d4c97d24514ddab72abe534e12ef3e1099cf4f1aa301` |
| 23 | `theorem` | [pi_le_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean/declarations/pi-le-pi--956cde267c698b1f1db4899a.md) | 175 | `result-track:956cde267c698b1f1db4899a1ff4d71b75050c9c755954acbb7d5ab4006260e6` |
| 24 | `theorem` | [pi_inj](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean/declarations/pi-inj--e72bab31ba5a84e61a5736db.md) | 180 | `result-track:e72bab31ba5a84e61a5736dbeb25e82c6eb1942938ca7d7cc374475c45ab63f8` |
| 25 | `def` | [coprodᵢ](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean/declarations/coprod--c6ff891718c3f32741278168.md) | 197 | `declaration-track:c6ff891718c3f32741278168648ab89e2e908fd4637a7456983dfdb1642968d1` |
| 26 | `theorem` | [mem_coprodᵢ_iff](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean/declarations/mem-coprod-iff--579ffd6c497c1367130d7bed.md) | 201 | `result-track:579ffd6c497c1367130d7bed4013f8c1270099f4c5f1d69154c6d1d5e2cc2b40` |
| 27 | `theorem` | [compl_mem_coprodᵢ](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean/declarations/compl-mem-coprod--0cfd602c4d414996be65617a.md) | 205 | `result-track:0cfd602c4d414996be65617a98969b24d69fa80197520aa461e3290b14af881f` |
| 28 | `theorem` | [coprodᵢ_neBot_iff'](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean/declarations/coprod-nebot-iff--e9fbd6b816c02c2a3a5b5295.md) | 210 | `result-track:e9fbd6b816c02c2a3a5b5295a0a76cfbe948630dd05e894e111b108b0b6329e2` |
| 29 | `theorem` | [coprodᵢ_neBot_iff](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean/declarations/coprod-nebot-iff--0e865daa3acd4c3709c186da.md) | 216 | `result-track:0e865daa3acd4c3709c186da1223c6c07aea39312460079f09a0657ebfcd7a99` |
| 30 | `theorem` | [coprodᵢ_eq_bot_iff'](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean/declarations/coprod-eq-bot-iff--317a3f17685a85800eefaf95.md) | 220 | `result-track:317a3f17685a85800eefaf95f2abe6482f79135714e0c668f9a12b58fd04decc` |
| 31 | `theorem` | [coprodᵢ_eq_bot_iff](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean/declarations/coprod-eq-bot-iff--c6e939b85f7296ce4b5af02a.md) | 226 | `result-track:c6e939b85f7296ce4b5af02afce6be8d1bf301c628aa9289c6c2e4f9f4e07acd` |
| 32 | `theorem` | [coprodᵢ_bot'](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean/declarations/coprod-bot--c34a23283333ecfbba21ee1b.md) | 230 | `result-track:c34a23283333ecfbba21ee1be3653d73924475b1b800d005bfb835961eada71d` |
| 33 | `theorem` | [coprodᵢ_bot](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean/declarations/coprod-bot--041449e9e680984562f6e2dd.md) | 235 | `result-track:041449e9e680984562f6e2ddf6f78b8fd83abba46facf86d3c028cf205d92999` |
| 34 | `theorem` | [NeBot.coprodᵢ](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean/declarations/nebot-coprod--8118697f5c09b63ec99c012b.md) | 239 | `result-track:8118697f5c09b63ec99c012bac68a94ff90a8dedd144f40b051bc866ed26f4da` |
| 35 | `theorem` | [coprodᵢ_neBot](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean/declarations/coprod-nebot--4451d763649fb6bc0aeda3a8.md) | 244 | `result-track:4451d763649fb6bc0aeda3a83ea6e00d3a510caf5b5e39865435b014a2126770` |
| 36 | `theorem` | [coprodᵢ_mono](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean/declarations/coprod-mono--2f2d0077b68ea7c0bb4edbae.md) | 250 | `result-track:2f2d0077b68ea7c0bb4edbae18521626dce0ebe24a4e2126eb93c91701df15bb` |
| 37 | `theorem` | [map_pi_map_coprodᵢ_le](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean/declarations/map-pi-map-coprod-le--c869afa21143336ba1b9aa9f.md) | 256 | `result-track:c869afa21143336ba1b9aa9fca208c43f2db5be164cc0d4fccec3c2027220a30` |
| 38 | `theorem` | [Tendsto.pi_map_coprodᵢ](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant63e302af4e691920047900cd40660484b8dccec1f040d40a99bd44479293043f.lean/declarations/tendsto-pi-map-coprod--f7aa2b8ed253129205cc0008.md) | 265 | `result-track:f7aa2b8ed253129205cc00085fc4ce3aa7de2b138e22a4cc6fa17e9bae07c3d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
