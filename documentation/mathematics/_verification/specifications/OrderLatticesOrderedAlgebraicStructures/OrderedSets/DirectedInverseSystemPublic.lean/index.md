# Verification target: Directed Inverse System Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9efaa124b4e64f79d7514744b0544f1a26ef3ad6",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DirectedInverseSystem/Variantdfa51418e1841cbd7e9bdf3db469f9f6c5a06c966b376c193f55f98b6c5340d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9efaa124b4e64f79d7514744b0544f1a26ef3ad6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DirectedInverseSystem/Variantdfa51418e1841cbd7e9bdf3db469f9f6c5a06c966b376c193f55f98b6c5340d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DirectedInverseSystem/Variantdfa51418e1841cbd7e9bdf3db469f9f6c5a06c966b376c193f55f98b6c5340d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [DirectedSystem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/directedsystem.md) | 69 | `declaration-track:d3f95b7843a528b3d4678e22d0669d47a5447ce3de8c9edc129b6bc4b3eea33e` |
| 2 | `theorem` | [DirectedSystem.map_self'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/directedsystem-map-self.md) | 84 | `result-track:d2ca2d7cdc593b5153efabaaf8bd746edca5de31487e5947888d4eea2be17236` |
| 3 | `theorem` | [DirectedSystem.map_map'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/directedsystem-map-map.md) | 89 | `result-track:8116eeb626f80c0d9de914a21a003ccbe0dc08e084c0201119c240d8b74009cb` |
| 4 | `def` | [setoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/setoid.md) | 100 | `declaration-track:f623808f6e7f4d2b321ac01dbeec65f351fb388614acfbe9dd9e33cc341962f3` |
| 5 | `theorem` | [r_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/r-of-le.md) | 108 | `result-track:ae40d34685286c99ae6000110c5135b7fdf713a6a647859dd1181f8ebf9210c7` |
| 6 | `abbrev` | [_root_.DirectLimit](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/root-directlimit.md) | 113 | `declaration-track:8469c08e61951f7585d8e6ca23ee0307396d1741a49093c3e929d96aa58de8b4` |
| 7 | `theorem` | [eq_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/eq-of-le.md) | 116 | `result-track:cf2aee03f0fd9206237211b19f124ac935857a8f6220d76211f9a87c3ebce936` |
| 8 | `theorem` | [mk_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/mk-apply.md) | 122 | `result-track:9b67cc17442aea0434b6a3981e6c14f56a8e69ba184876819146e5de9095ed8a` |
| 9 | `theorem` | [induction](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/induction-source-edition-3.md) | 126 | `result-track:cdd9279e8cc0b783f92c47324a7eeda2a3adee328717579aa47053a2c7c0b900` |
| 10 | `theorem` | [exists_eq_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/exists-eq-mk-source-edition-3.md) | 130 | `result-track:e1ab650a5f555cc57a0599a23458d5882a4a2d4779bc389df6b745debd806883` |
| 11 | `theorem` | [exists_eq_mk₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/exists-eq-mk.md) | 132 | `result-track:4e6ddd9a4fd4e7a636bc32d880df214e5028681412db2a5466216200f22670f8` |
| 12 | `theorem` | [exists_eq_mk₃](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/exists-eq-mk-source-edition-2.md) | 137 | `result-track:a617184510c25a8167cc0bf3742f6f5816a44c3c20fadd006ef1960d06e5228e` |
| 13 | `theorem` | [induction₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/induction-source-edition-2.md) | 143 | `result-track:45c6d82f089fc544b18139bc8fd573fe6a13f6658314cb1b2a9ac5640fe9826b` |
| 14 | `theorem` | [induction₃](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/induction.md) | 147 | `result-track:1e7982d92834971b1e92be98899cd94b1ae2a76215b0152e20d065e9a9a4f598` |
| 15 | `theorem` | [mk_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/mk-injective.md) | 152 | `result-track:e522a52242dc7d86b946fe2df4a8d658c9fdc82a62ac4ca69c6d7a86bb64005f` |
| 16 | `def` | [map₀](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/map-source-edition-3.md) | 161 | `declaration-track:e37235fa49e429b0c6ea22a7e906b436fca263af6690ae8d5be6415c7e0b4174` |
| 17 | `theorem` | [map₀_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/map-def-source-edition-2.md) | 163 | `result-track:1d4112ee92a291c8e8310437c21c4daa7e93e7377d3ce4f89b34d72e07193f68` |
| 18 | `def` | [lift](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/lift-source-edition-2.md) | 175 | `declaration-track:3d031e4ec4b56467993ab3c3c88cad7a39c11b9c975f1bbade8a0b64e6a3faab` |
| 19 | `theorem` | [lift_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/lift-def-source-edition-3.md) | 180 | `result-track:d943f025218be041fc75c640833cdfbe7e5e6d934d326bf3a46164c17f7b7237` |
| 20 | `theorem` | [lift_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/lift-injective.md) | 182 | `result-track:f9d5e9e2c832800a8fce8e72d580b7f3f458fc41bd0f9f8a47a1543fe404fd38` |
| 21 | `def` | [map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/map.md) | 194 | `declaration-track:66a5c727404deb7ea1cc80446bea3bfab52fc143674beda33023b002fa0bec43` |
| 22 | `theorem` | [map_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/map-def.md) | 199 | `result-track:161daaf158383060ea16abd9f15ced0126793ec27715ca6f75604aeebe5e5fcf` |
| 23 | `def` | [lift₂Aux](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/lift-aux.md) | 208 | `declaration-track:b459db40aa7cbb58e15fba319fed20688c39ac33a62dffcf99e121093bad977f` |
| 24 | `def` | [lift₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/lift.md) | 218 | `declaration-track:21b66300959d198b9491b537f7c3f8a7a94e48e637049d4bb5702e2920f6e7ca` |
| 25 | `theorem` | [lift₂_def₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/lift-def.md) | 226 | `result-track:0df736ead0939df42afcc9a72c2cc4f099afc7bb1d375a604ddbf48906515b2e` |
| 26 | `theorem` | [lift₂_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/lift-def-source-edition-2.md) | 230 | `result-track:21d29ff57087c2079590f157ef7c11a274efa120700ec39b3f05cdc098b43a95` |
| 27 | `def` | [map₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/map-source-edition-2.md) | 242 | `declaration-track:a0e1d71c56f396a77ae74bd15161f645f5624fa0fadb02fd1922b020d8d01687` |
| 28 | `theorem` | [map₂_def₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/map-def-source-edition-4.md) | 247 | `result-track:cc40a2fade71570e5e30a401f185bcfcf2d04e0f77f8c208fd015572a1e26724` |
| 29 | `theorem` | [map₂_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/map-def-source-edition-3.md) | 251 | `result-track:c06adfdc14c0111a48e28927a2a8a50bf9403e8ce7b15503f161572fbebbb50e` |
| 30 | `class` | [InverseSystem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/inversesystem.md) | 264 | `declaration-track:d525aaf78a9c232a9b4e4c09fecb4f3eb7f616ea777fa3e35fed395f4c3802d0` |
| 31 | `def` | [limit](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/limit.md) | 273 | `declaration-track:87762de52aa0090f2b8a027e121f29d6500d6e4cb99f080648ada73ba18c2651` |
| 32 | `abbrev` | [piLT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/pilt.md) | 278 | `declaration-track:bf684aba79409a7d33b6944a72127b0c27feb5d5a3fbe9d929f06de5525fafa0` |
| 33 | `abbrev` | [piLTProj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/piltproj.md) | 281 | `declaration-track:c2f649e9df04fbbb1fe0e6ed20ab0300892888d7ecfbbe5cb63eb0108d6e0049` |
| 34 | `theorem` | [piLTProj_intro](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/piltproj-intro.md) | 283 | `result-track:8e6300a0b45ebe24d9498383ef7af1004582db10c4c2d743dcf1048b5af66a17` |
| 35 | `def` | [IsNatEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/isnatequiv.md) | 288 | `declaration-track:2a01d7d1a39285459228af7e91b6852bf3643677a62da5dfec0ec98ebe46ba35` |
| 36 | `def` | [piLTLim](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/piltlim.md) | 296 | `declaration-track:c6e43f36eb0a97488fee0f3e6106a2666e37e218d06656f2c465a962395bd3fd` |
| 37 | `theorem` | [piLTLim_symm_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/piltlim-symm-apply.md) | 305 | `result-track:15ce3ad02236d2e1a389163254275ec83f11d1cf19cd0b7bb80f060d8b8e26a8` |
| 38 | `def` | [piSplitLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/pisplitle.md) | 319 | `declaration-track:af440b68bd23de40c233e1daec0de8234c8ab7168b728bf480874ff1f6f8ec85` |
| 39 | `theorem` | [piSplitLE_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/pisplitle-eq.md) | 325 | `result-track:78034a2dc68b5c90606894b851c9a4122e79e7bdde136c4aee06e12634749416` |
| 40 | `theorem` | [piSplitLE_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/pisplitle-lt.md) | 328 | `result-track:861753e10b11b21e862f1bab0a77aee07f28f065f53356d34045d7842c3bdcf0` |
| 41 | `def` | [piEquivSucc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/piequivsucc.md) | 343 | `declaration-track:e2a96bbac1c06dfac50a02ae4faee0199f8e5c8c8802132c0c480aa7798e740e` |
| 42 | `theorem` | [piEquivSucc_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/piequivsucc-self.md) | 349 | `result-track:c774472aa7a9d3fc9fe187bb19052c521779b7a3f189e657b560589f42964600` |
| 43 | `theorem` | [isNatEquiv_piEquivSucc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/isnatequiv-piequivsucc.md) | 356 | `result-track:cf6768fe84f723a4106e7062ebbac4b88ec565b833f7c526c851df9de6621686` |
| 44 | `def` | [invLimEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/invlimequiv.md) | 376 | `declaration-track:e3ea59295fed171c09413f74a5db0629a6339dd2fb4a644e33266d1ac40a2e85` |
| 45 | `def` | [piEquivLim](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/piequivlim.md) | 386 | `declaration-track:dee8bdd4e7bd840a47d509fadc974b51f04d9380b2bd7b8f2e4ee95665b5d723` |
| 46 | `theorem` | [isNatEquiv_piEquivLim](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/isnatequiv-piequivlim.md) | 391 | `result-track:b7f2578e0a2a8c1a1e3c95b932821d41d227c2eb169ece664ba2448cb2eca684` |
| 47 | `structure` | [PEquivOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/pequivon.md) | 408 | `declaration-track:9b8c3f6a701088a873196de311d1009f8880098b5a471b71385f720398dfa7fb` |
| 48 | `def` | [PEquivOn.restrict](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/pequivon-restrict.md) | 420 | `declaration-track:a9e49acbc53ede2a57bc677c52c40360896d704564cb0dfca5518c121cae45a7` |
| 49 | `theorem` | [unique_pEquivOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/unique-pequivon.md) | 426 | `result-track:6e42ad285fd69fe0d8c3d0433b058ca1fbd9a7dd9d5b29d7ace56adef4cdd8c3` |
| 50 | `theorem` | [pEquivOn_apply_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/pequivon-apply-eq.md) | 444 | `result-track:0688d83ca765cf0facfb855e184ef66dda374831ad213ab5a9e183cd4f9a4078` |
| 51 | `def` | [pEquivOnSucc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/pequivonsucc.md) | 453 | `declaration-track:77ef2a123d8d060bc25c3f5773a91e29ddc2da12e6dbcbf7f35a30d578811f73` |
| 52 | `def` | [pEquivOnGlue](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/pequivonglue.md) | 467 | `declaration-track:8263a59a3b9b978c5c92397f7e1c1ceb819d722d43401a033fc744e7db5eb497` |
| 53 | `def` | [pEquivOnLim](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/pequivonlim.md) | 476 | `declaration-track:cd6c9278cb5991c1c9a51e59417d907fc49be82c30bdf3103ab4410950012073` |
| 54 | `def` | [globalEquivAux](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/globalequivaux.md) | 491 | `declaration-track:b253db90148a541146592ee676c98673fdb600c24ee657ad39ae9060a14c2dd9` |
| 55 | `def` | [globalEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/globalequiv.md) | 498 | `declaration-track:755736f5323800fc2a78a5cf06c81a14570325991519d30c2cc009662ea1fe3a` |
| 56 | `theorem` | [globalEquiv_naturality](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/globalequiv-naturality.md) | 501 | `result-track:7782d829fa8c42cc74de8ff3b01cf1a3b0a1ca170c235f4f5247a00b66c3b2e8` |
| 57 | `theorem` | [globalEquiv_compatibility](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedInverseSystemPublic.lean/declarations/globalequiv-compatibility.md) | 507 | `result-track:2c3653c77d0cedbaaddcfa635ed0bf71735acaf0c546d934a04107072c2d4565` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d253dd87d73316316535bc636ad254b634339754318d17b7306031b734cf505d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DirectedInverseSystem/Variantdfa51418e1841cbd7e9bdf3db469f9f6c5a06c966b376c193f55f98b6c5340d9.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DirectedInverseSystem/Variantdfa51418e1841cbd7e9bdf3db469f9f6c5a06c966b376c193f55f98b6c5340d9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
