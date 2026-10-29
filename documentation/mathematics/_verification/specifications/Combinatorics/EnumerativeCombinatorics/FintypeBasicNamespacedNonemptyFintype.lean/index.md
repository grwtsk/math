# Verification target: Fintype Basic Namespaced Nonempty Fintype

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2b53ea919fe75423e08878903869bce3dae29ef",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant22975838876c33ffbcfa0fcae2677e5548bc7dc5be47c7ed0a813fa1625fb136.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2b53ea919fe75423e08878903869bce3dae29ef`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant22975838876c33ffbcfa0fcae2677e5548bc7dc5be47c7ed0a813fa1625fb136.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variant22975838876c33ffbcfa0fcae2677e5548bc7dc5be47c7ed0a813fa1625fb136.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finite.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.BooleanAlgebra` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Image` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.OfMap` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sets` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.FinRange` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Fin.fintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/fin-fintype.md) | 40 | `declaration-track:492d29d891b59bce6194395a314fba783d73cb8cfa36b4e5dfcb34d84c987898` |
| 2 | `theorem` | [Fin.univ_def](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/fin-univ-def.md) | 43 | `result-track:437d42b705afd0693cbbc2317ab4f0c32f6bcbb9e097988ec49d9e40a0a531ca` |
| 3 | `theorem` | [Finset.val_univ_fin](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/finset-val-univ-fin.md) | 46 | `result-track:7da321e5fda0957ba42b130992173b1ddd36b2e3b426c9cbf1f33077da7933b8` |
| 4 | `theorem` | [nonempty_fintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/nonempty-fintype.md) | 49 | `result-track:7dce07fe17697303fba765d98618a488c70a7989c2d82fe6a4c30d9d99be3daa` |
| 5 | `theorem` | [List.toFinset_finRange](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/list-tofinset-finrange.md) | 53 | `result-track:0554bda21650e700529832c5cdace5b08d93c18fb252247ade126d94d42b271e` |
| 6 | `theorem` | [Fin.univ_val_map](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/fin-univ-val-map.md) | 56 | `result-track:983e0bc8acf4102689629dbbe128e65cd518ab9514de456a5662740e45341606` |
| 7 | `theorem` | [Fin.univ_image_def](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/fin-univ-image-def.md) | 60 | `result-track:798c0a82430fd9976748d56e4e8451c5ed47c3d4848e38bded98e28aeadfc692` |
| 8 | `theorem` | [Fin.univ_map_def](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/fin-univ-map-def.md) | 64 | `result-track:439737c89875e2ebc4437c7f538ef2dd56c3e63397186e3cc4f2da753a1e7a51` |
| 9 | `theorem` | [Fin.image_succAbove_univ](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/fin-image-succabove-univ.md) | 69 | `result-track:cd180389a0e5746e705f3a9826a4075e20e712803e148561944bbd306c6bd646` |
| 10 | `theorem` | [Fin.image_succ_univ](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/fin-image-succ-univ.md) | 74 | `result-track:3761d3880439d35b189d55cd65fefae2f21410d22a4879d4c6566aabb08cdeb7` |
| 11 | `theorem` | [Fin.image_castSucc](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/fin-image-castsucc.md) | 78 | `result-track:bcba2dcadae88ffb4c400c276e2b246201f46769e4d01e4cc686b7fb69bcffa9` |
| 12 | `theorem` | [Fin.univ_succ](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/fin-univ-succ.md) | 85 | `result-track:e77f9ab7958a526a497f26c0303ad041599e4085a663c7e5d86fe30d68c77f42` |
| 13 | `theorem` | [Fin.univ_castSuccEmb](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/fin-univ-castsuccemb.md) | 91 | `result-track:4edbedf9e39df9a9ae1ffcacf8ad7265a71ae902043f531eeafde3ac8299c7a1` |
| 14 | `theorem` | [Fin.univ_succAbove](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/fin-univ-succabove.md) | 98 | `result-track:7dae28b4427a05cda4b693cb5f4563c96b92fffc13d2b30034815a0c676ac101` |
| 15 | `theorem` | [Fin.univ_image_get](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/fin-univ-image-get-source-edition-2.md) | 102 | `result-track:8198b4383a01bda0c5ae978d51a44c5588e1d2e630b85da7a015c7ced1dbf598` |
| 16 | `theorem` | [Fin.univ_image_getElem'](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/fin-univ-image-getelem.md) | 106 | `result-track:032dc754d8403294666db876a2572bbea2ccfdfc37c5fc067650b8c38809d613` |
| 17 | `theorem` | [Fin.univ_image_get'](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/fin-univ-image-get.md) | 110 | `result-track:04d4f1f3a9ffd692029567e10daed9ae19889111147e0ea6626e0d2705362372` |
| 18 | `def` | [Unique.fintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/unique-fintype.md) | 115 | `declaration-track:9d036faee780674e9da96466a603248c8a3d18ea98fa4a00ae831d728bba2783` |
| 19 | `instance` | [Fintype.subtypeEq](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/fintype-subtypeeq.md) | 120 | `declaration-track:3f62586b25c5b287734c7dd239f9567b6298e26d2ae94818a1586c6d2b5794fe` |
| 20 | `instance` | [Fintype.subtypeEq'](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/fintype-subtypeeq-source-edition-2.md) | 125 | `declaration-track:c298584dc4d916ef6b367e8c1eb044e1028bd57b7007d2aa198944adc25247cd` |
| 21 | `theorem` | [Fintype.univ_empty](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/fintype-univ-empty.md) | 128 | `result-track:4dfdebf3db47e39cd2d1e6cbf07ffc1a23aad07ad27b3f2cc55b8b6fc3dbaf81` |
| 22 | `theorem` | [Fintype.univ_pempty](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/fintype-univ-pempty.md) | 131 | `result-track:47fb335ce08a290f6bc6afde5c671b5a755d8eebbab6b4b7401a6f293d7c4554` |
| 23 | `instance` | [Unit.fintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/unit-fintype.md) | 134 | `declaration-track:86b3b53c0a33e499f62951be9f7b9309f0d6789355896b2825a538ce7125dffb` |
| 24 | `theorem` | [Fintype.univ_unit](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/fintype-univ-unit.md) | 137 | `result-track:7830d916a967ad9f51ec4a35f5a6c5115185973640e2804c4bd0f5580a42b67e` |
| 25 | `instance` | [PUnit.fintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/punit-fintype.md) | 140 | `declaration-track:9281b19c7afb5252ed76edd1989e7cf6590bd0aa95f5e5f75c1d685d4c0220f0` |
| 26 | `theorem` | [Fintype.univ_punit](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/fintype-univ-punit.md) | 143 | `result-track:c667564711ae615d7303e7b9113e50b1cb09e33a9c693fc668e05d132556e1d9` |
| 27 | `theorem` | [Fintype.univ_bool](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/fintype-univ-bool.md) | 147 | `result-track:ad9979bf256f3707d5481297653a14cc9d1073a9c3d6397838bceabf1260d849` |
| 28 | `def` | [Fintype.prodLeft](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/fintype-prodleft.md) | 151 | `declaration-track:2b4b641afb8b7794332aa368f70cc385ec2a3e6cdb0032cac9a535ba9d5416d7` |
| 29 | `def` | [Fintype.prodRight](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/fintype-prodright.md) | 155 | `declaration-track:697ea8b92c49625e08ef4b131d02b367222e2f96b6ddb97e99e3dd41230b11d3` |
| 30 | `instance` | [ULift.fintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/ulift-fintype.md) | 158 | `declaration-track:ad02a5371c56537f0f80b562e3a2afdf410ef348bb72ef02776a2e87f2b321fc` |
| 31 | `instance` | [PLift.fintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/plift-fintype.md) | 161 | `declaration-track:70e3e2ab9c22ab3c58116d3755066ac1ba1dad8d6b4c8d22c8c62c8d1d54e14c` |
| 32 | `instance` | [PLift.fintypeProp](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/plift-fintypeprop.md) | 164 | `declaration-track:965f901fc1ed0c799718abd56c4a8dbf056f888edb720aadc1ade5e99fb514ee` |
| 33 | `instance` | [Quotient.fintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/quotient-fintype.md) | 167 | `declaration-track:9e59b3dd09434a312875c5e20b2c9640b597eb064c166548e32e3c306b7e90f8` |
| 34 | `instance` | [PSigma.fintypePropLeft](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/psigma-fintypepropleft.md) | 171 | `declaration-track:262a7afaea45ac840414de3570e056294fd19a6549e9ae75d5a4b15661756d62` |
| 35 | `instance` | [PSigma.fintypePropRight](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/psigma-fintypepropright.md) | 176 | `declaration-track:137157570c72dcb214b62e3c95f56b6a9b03900081267727923b6952454e155e` |
| 36 | `instance` | [PSigma.fintypePropProp](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/psigma-fintypepropprop.md) | 181 | `declaration-track:fef93dfa96596915a5ee2930a6029a74de98d7a364787c5686efa7898b9f95e6` |
| 37 | `instance` | [pfunFintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/pfunfintype.md) | 186 | `declaration-track:70e38a61e0dc8906da4f0be7659c22987cdecc7bc502cb50cf5abd876aab2ef6` |
| 38 | `def` | [truncOfMultisetExistsMem](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/truncofmultisetexistsmem.md) | 196 | `declaration-track:d924bf32b95f08c1a411d3a0ce3a1c57ac4daad62e91f44956878362c6c551e2` |
| 39 | `def` | [truncOfNonemptyFintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/truncofnonemptyfintype.md) | 204 | `declaration-track:524766ecc3756cb2a06d911c059c9bda54bf57a62b2f1e013da57a9c27a78e18` |
| 40 | `def` | [truncSigmaOfExists](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/truncsigmaofexists.md) | 210 | `declaration-track:e7e552b12e648263b73522cc0a6ddc6ecfcdd288b2f1b1d731d4da2141bd6143` |
| 41 | `theorem` | [count_univ](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/count-univ.md) | 221 | `result-track:e327aa281c565adc1266158913393042ab6a6821fab6efa283d21a634328bb3c` |
| 42 | `theorem` | [map_univ_val_equiv](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/map-univ-val-equiv.md) | 225 | `result-track:7e0ff36fca651f2cc0a5e94c26ca2bfc015e5daf51857b936b06c4c0f9514f4b` |
| 43 | `theorem` | [bijective_iff_map_univ_eq_univ](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/bijective-iff-map-univ-eq-univ.md) | 231 | `result-track:b70a4982f26505c0318e7b4747999b90a49f38109489a2748942f6a289b59591` |
| 44 | `def` | [seqOfForallFinsetExistsAux](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/seqofforallfinsetexistsaux.md) | 241 | `declaration-track:6344d2b82358a8c082d3c4aa3ba00d38887754e0276b16b9b7020f0e5163ece0` |
| 45 | `theorem` | [exists_seq_of_forall_finset_exists](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/exists-seq-of-forall-finset-exists.md) | 256 | `result-track:2f9139bbef88c87bb3c433f5abdeb9371bf7f55bd06a97c79e1f1a3ed6b202a0` |
| 46 | `theorem` | [exists_seq_of_forall_finset_exists'](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeBasicNamespacedNonemptyFintype.lean/declarations/exists-seq-of-forall-finset-exists-source-edition-2.md) | 290 | `result-track:d1e38e868feb9ca777e00cc9a07c958bc5188da884099accbec9f84a041c7da6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4093d96e8e4e3f729fcb708ff87afe0e77a4bd47340d51043ff8457bb034fba2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant22975838876c33ffbcfa0fcae2677e5548bc7dc5be47c7ed0a813fa1625fb136.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Basic/Variant22975838876c33ffbcfa0fcae2677e5548bc7dc5be47c7ed0a813fa1625fb136.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
