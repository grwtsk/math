# Verification target: GRWTSK.Topology.MetricTopology.Basic.Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bcc38e3ed3951a95f60ac3a102597c3c77c25ece",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bcc38e3ed3951a95f60ac3a102597c3c77c25ece`.

Source path: `GRWTSK/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Projection` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Euclidean.PerpBisector` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.QuadraticDiscriminant` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dist_left_midpoint_eq_dist_right_midpoint](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/dist-left-midpoint-eq-dist-right-midpoint--7190bed0ef19a05fd40370da.md) | 83 | `result-track:7190bed0ef19a05fd40370da790ec7ef69809e19b0abde890047aa3194f04932` |
| 2 | `theorem` | [inner_weightedVSub](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/inner-weightedvsub--d03a2abf81d18eb8e69534c5.md) | 90 | `result-track:d03a2abf81d18eb8e69534c580ce07e28b50dfd48b8afc45d6ae82a5f827c68f` |
| 3 | `theorem` | [dist_affineCombination](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/dist-affinecombination--bedce57d29288e5b960e8be1.md) | 105 | `result-track:bedce57d29288e5b960e8be14b6627809cb37874aaef32882a0b747d488c76f7` |
| 4 | `theorem` | [dist_smul_vadd_sq](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/dist-smul-vadd-sq--89268c5461f185102d81d08e.md) | 124 | `result-track:89268c5461f185102d81d08ec537d725d6e4b86ec01e902f0ab477f49911da4d` |
| 5 | `theorem` | [dist_smul_vadd_eq_dist](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/dist-smul-vadd-eq-dist--91863c0a3f3e96f6d8cc7004.md) | 134 | `result-track:91863c0a3f3e96f6d8cc70042648287991f8bf23d5e5c74bd4c35a92785e6e40` |
| 6 | `theorem` | [eq_of_dist_eq_of_dist_eq_of_mem_of_finrank_eq_two](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/eq-of-dist-eq-of-dist-eq-of-mem-of-finrank-eq-two--d61a1012198984f1dacbe1cb.md) | 154 | `result-track:d61a1012198984f1dacbe1cb43f89857d68a1424086772bc390941a08924fed0` |
| 7 | `theorem` | [eq_of_dist_eq_of_dist_eq_of_finrank_eq_two](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/eq-of-dist-eq-of-dist-eq-of-finrank-eq-two--f99a6bd23d13192e8de80cdb.md) | 209 | `result-track:f99a6bd23d13192e8de80cdbcd720bac10004a364b03b21bb2878e013bebf2b4` |
| 8 | `def` | [orthogonalProjectionFn](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/orthogonalprojectionfn--f64fb91269592b302739476c.md) | 225 | `declaration-track:f64fb91269592b302739476c1165e3e7bf6495bbc29726e157ad78bea3168df4` |
| 9 | `theorem` | [inter_eq_singleton_orthogonalProjectionFn](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/inter-eq-singleton-orthogonalprojectionfn--58f8c76f3030c5fb62dfff4e.md) | 240 | `result-track:58f8c76f3030c5fb62dfff4ee7ca8693e214a2998d5c01bafbbb323e71c2f15e` |
| 10 | `theorem` | [orthogonalProjectionFn_mem](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/orthogonalprojectionfn-mem--65b2de4e53b7ce1e4a0b6192.md) | 254 | `result-track:65b2de4e53b7ce1e4a0b6192867f882e066384301da54c2d1493d37c50806e21` |
| 11 | `theorem` | [orthogonalProjectionFn_mem_orthogonal](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/orthogonalprojectionfn-mem-orthogonal--6278da99769f91d2791f0517.md) | 263 | `result-track:6278da99769f91d2791f05177762531ced96bcbac1eb5a5af5dcb8f0b19ee39d` |
| 12 | `theorem` | [orthogonalProjectionFn_vsub_mem_direction_orthogonal](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/orthogonalprojectionfn-vsub-mem-direction-orthogonal--3437402851530e07978b680a.md) | 274 | `result-track:3437402851530e07978b680a2bdaabb5de0568e8197a2d2f6ff7bc1696b88739` |
| 13 | `def` | [orthogonalProjection](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/orthogonalprojection--6e24ccc1949b369e5423d1e8.md) | 289 | `declaration-track:6e24ccc1949b369e5423d1e8687a3c0a918e4d74ee48d3822b46003d9ff9bf09` |
| 14 | `theorem` | [orthogonalProjectionFn_eq](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/orthogonalprojectionfn-eq--5b26754cafd1dc250aa09eb6.md) | 317 | `result-track:5b26754cafd1dc250aa09eb62bbb672d9cb7f816aa2e70c98a6c7f7668b4096c` |
| 15 | `theorem` | [orthogonalProjection_linear](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/orthogonalprojection-linear--69c4c1162f07095338f29e5c.md) | 325 | `result-track:69c4c1162f07095338f29e5c3d1d91430b7846461ec587b6febd1ab8f4287284` |
| 16 | `theorem` | [inter_eq_singleton_orthogonalProjection](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/inter-eq-singleton-orthogonalprojection--27602e11d6552f74839a62b6.md) | 334 | `result-track:27602e11d6552f74839a62b69d2e9b4b77fe89ba02a65205a040601622c14726` |
| 17 | `theorem` | [orthogonalProjection_mem](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/orthogonalprojection-mem--6eb2710874bcecf2257211f6.md) | 342 | `result-track:6eb2710874bcecf2257211f655b7f29cd1767877fabe44dbdac75708b90c4808` |
| 18 | `theorem` | [orthogonalProjection_mem_orthogonal](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/orthogonalprojection-mem-orthogonal--006752252336bc73386ec547.md) | 348 | `result-track:006752252336bc73386ec5470748c0886c3a65ee7404ec393170baf69d774f1f` |
| 19 | `theorem` | [orthogonalProjection_vsub_mem_direction](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/orthogonalprojection-vsub-mem-direction--0ab854b22837e82ebb811529.md) | 357 | `result-track:0ab854b22837e82ebb811529af1899b3faed33a8c0fdfe015d76ba3c74bd561d` |
| 20 | `theorem` | [vsub_orthogonalProjection_mem_direction](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/vsub-orthogonalprojection-mem-direction--687f5df513c6558c89db26ea.md) | 365 | `result-track:687f5df513c6558c89db26ead7883755bfab6a9d643afee237f28397d68ce5e1` |
| 21 | `theorem` | [orthogonalProjection_eq_self_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/orthogonalprojection-eq-self-iff--80f81c12ce8727d01abf2fb6.md) | 373 | `result-track:80f81c12ce8727d01abf2fb66119ca4c64cd46eba06db4a93b83295b784ff313` |
| 22 | `theorem` | [orthogonalProjection_mem_subspace_eq_self](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/orthogonalprojection-mem-subspace-eq-self--c43d688e7dfdddc20636a640.md) | 385 | `result-track:c43d688e7dfdddc20636a6405be58c2c73b49c9b81013c4aa09cf21ed5af9e13` |
| 23 | `theorem` | [orthogonalProjection_orthogonalProjection](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/orthogonalprojection-orthogonalprojection--82f09cae46e579933479d684.md) | 394 | `result-track:82f09cae46e579933479d684e7622d032a5c914b30debdc1ce2f95bfb39578f3` |
| 24 | `theorem` | [eq_orthogonalProjection_of_eq_subspace](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/eq-orthogonalprojection-of-eq-subspace--fa972605e875880f6034ef98.md) | 402 | `result-track:fa972605e875880f6034ef9873e37305d2927a1a0f457b18cdb635ad35caf791` |
| 25 | `theorem` | [dist_orthogonalProjection_eq_zero_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/dist-orthogonalprojection-eq-zero-iff--274b6cd183c4d0e52328a98c.md) | 410 | `result-track:274b6cd183c4d0e52328a98c6d941367b9090bca51a0f1bf6ba76e18e40c21ff` |
| 26 | `theorem` | [dist_orthogonalProjection_ne_zero_of_not_mem](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/dist-orthogonalprojection-ne-zero-of-not-mem--84c39c99bbcd33e0c84661aa.md) | 418 | `result-track:84c39c99bbcd33e0c84661aac54128fce6cd5cbd86d8fc935148bdd13063467f` |
| 27 | `theorem` | [orthogonalProjection_vsub_mem_direction_orthogonal](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/orthogonalprojection-vsub-mem-direction-orthogonal--cda9f454d7de1d89c86ed3ea.md) | 426 | `result-track:cda9f454d7de1d89c86ed3ea80cb44a89ce5899b9a0370ea0db41df4b556d149` |
| 28 | `theorem` | [vsub_orthogonalProjection_mem_direction_orthogonal](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/vsub-orthogonalprojection-mem-direction-orthogonal--82fd1bd61a8cfa0e51fe0ab8.md) | 434 | `result-track:82fd1bd61a8cfa0e51fe0ab8f426d6f27ad557a86450cc23e95816b6838c764e` |
| 29 | `theorem` | [orthogonalProjection_vsub_orthogonalProjection](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/orthogonalprojection-vsub-orthogonalprojection--5874a84e7d79824cd0daa608.md) | 442 | `result-track:5874a84e7d79824cd0daa608327030d6b4342e88e5a2dda83e23721640ffd7db` |
| 30 | `theorem` | [orthogonalProjection_vadd_eq_self](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/orthogonalprojection-vadd-eq-self--d7e29fdfd5c10aa0ec4c8a31.md) | 454 | `result-track:d7e29fdfd5c10aa0ec4c8a313a5a39843fcc2c7235b81695212862afd09de12f` |
| 31 | `theorem` | [orthogonalProjection_vadd_smul_vsub_orthogonalProjection](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/orthogonalprojection-vadd-smul-vsub-orthogonalprojection--4c69170f264530a9d185bb8f.md) | 469 | `result-track:4c69170f264530a9d185bb8f7ab6933ba3984dcbc37d35091a190b880e67eebb` |
| 32 | `theorem` | [dist_sq_eq_dist_orthogonalProjection_sq_add_dist_orthogonalProjection_sq](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/dist-sq-eq-dist-orthogonalprojection-sq-add-dist-orthogonalprojection-sq--1837452bb7536e82243f2997.md) | 479 | `result-track:1837452bb7536e82243f2997107740f17dac7be9ee19abbdec6d6225586bebd4` |
| 33 | `theorem` | [dist_sq_smul_orthogonal_vadd_smul_orthogonal_vadd](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/dist-sq-smul-orthogonal-vadd-smul-orthogonal-vadd--c636907092d79eb2ce47104d.md) | 495 | `result-track:c636907092d79eb2ce47104d8ceee5afd23a83bc3438368b243dcdfd7d46a16b` |
| 34 | `def` | [reflection](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/reflection--7efeeab3fa351512588c19c9.md) | 521 | `declaration-track:7efeeab3fa351512588c19c966333610ffee79d343c3703c808d0de8b0b8126d` |
| 35 | `theorem` | [reflection_apply](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/reflection-apply--a076859cbd611abba1f11299.md) | 541 | `result-track:a076859cbd611abba1f11299c165f2a7e5d40f9aa691176fad4739b695cecaed` |
| 36 | `theorem` | [eq_reflection_of_eq_subspace](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/eq-reflection-of-eq-subspace--ade17054c0952e4e323efc94.md) | 546 | `result-track:ade17054c0952e4e323efc9440ddb63e4f8de78ff9a7d4b4369a27a65ba21569` |
| 37 | `theorem` | [reflection_reflection](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/reflection-reflection--c7ddee4c89870202f042c3d4.md) | 555 | `result-track:c7ddee4c89870202f042c3d46fb64094edacad2cfe3f286bffd180d87e3e9f41` |
| 38 | `theorem` | [reflection_symm](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/reflection-symm--d6ec35f54fea36f77953b4ca.md) | 567 | `result-track:d6ec35f54fea36f77953b4ca83033dc89ae1f11020f2d752793373f7fca2992e` |
| 39 | `theorem` | [reflection_involutive](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/reflection-involutive--ecac88ecb7a67c24f054e7bd.md) | 575 | `result-track:ecac88ecb7a67c24f054e7bd32962e10d8629a8384d39fad56b2afd607d299cc` |
| 40 | `theorem` | [reflection_eq_self_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/reflection-eq-self-iff--d3cc6e89a74eb6ac3d8fa73b.md) | 581 | `result-track:d3cc6e89a74eb6ac3d8fa73b18636e7fa332a8d0ac6d4a11fc30377b13b937cc` |
| 41 | `theorem` | [reflection_eq_iff_orthogonalProjection_eq](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/reflection-eq-iff-orthogonalprojection-eq--33d55ed5aac7d6f36bad81f5.md) | 597 | `result-track:33d55ed5aac7d6f36bad81f5b3e78ad720681c4fd53059583d569ed07749945c` |
| 42 | `theorem` | [dist_reflection](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/dist-reflection--bfd68f9236dac11fe8aee5cd.md) | 616 | `result-track:bfd68f9236dac11fe8aee5cd48331b97cd840b3db40589c24ee2160b398aaedc` |
| 43 | `theorem` | [dist_reflection_eq_of_mem](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/dist-reflection-eq-of-mem--0c49d2cde496ea35ebb52681.md) | 624 | `result-track:0c49d2cde496ea35ebb526818cd5b9019e971cf0b0bb3585648278e72407225c` |
| 44 | `theorem` | [reflection_mem_of_le_of_mem](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/reflection-mem-of-le-of-mem--7e7909f85d32c59b9c0f6b06.md) | 634 | `result-track:7e7909f85d32c59b9c0f6b06c913b2aced4e155c0f2de9ef90489529d924a36f` |
| 45 | `theorem` | [reflection_orthogonal_vadd](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/reflection-orthogonal-vadd--2e2db6812ca2c6119c1c461e.md) | 644 | `result-track:2e2db6812ca2c6119c1c461e60ef751905b324cb8a542bbfefc168872afeea61` |
| 46 | `theorem` | [reflection_vadd_smul_vsub_orthogonalProjection](../../../../../mathematics/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/declarations/reflection-vadd-smul-vsub-orthogonalprojection--3f1809df336240b2fc5fc204.md) | 655 | `result-track:3f1809df336240b2fc5fc20488fe81fd30baf609a2e45d7f3064f6d52846387c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
