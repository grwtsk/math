# Verification target: CStar Algebra Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "434e48fce4b2bb81a648e664c9ca11577ef4633b",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Basic/Variantbc67e3e3614632d68a9b4c5d8918eec7311e079e3a2c7e3f97f2cb2c180e4870.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `434e48fce4b2bb81a648e664c9ca11577ef4633b`.

Source path: `GRWTSK/Topology/MetricTopology/Basic/Variantbc67e3e3614632d68a9b4c5d8918eec7311e079e3a2c7e3f97f2cb2c180e4870.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Basic/Variantbc67e3e3614632d68a9b4c5d8918eec7311e079e3a2c7e3f97f2cb2c180e4870.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NormedStarGroup](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/normedstargroup.md) | 44 | `declaration-track:e0efd640ec33b573ee1ae24e4edc382839a2a6137efc0e5371ed6ad297319f59` |
| 2 | `lemma` | [norm_star](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/norm-star.md) | 54 | `result-track:5e324ccf086db88c95ad753fe9c3081cd12e37ecce14493e39b37a12434d4abd` |
| 3 | `theorem` | [nnnorm_star](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/nnnorm-star.md) | 58 | `result-track:c12f436ba23266677f9711bf68b2fd5654e23781ea2d2cfc4bbcac5bd9c7620b` |
| 4 | `def` | [starNormedAddGroupHom](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/starnormedaddgrouphom.md) | 62 | `declaration-track:6a472523313502674cd91072ce03c25d8e384aa922b56841629c23aea9b2470f` |
| 5 | `theorem` | [star_isometry](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/star-isometry.md) | 66 | `result-track:99ba836a6f40c4c60ba2611174b056147dd2239e9db051d2be5ed28c89f32297` |
| 6 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/instance-source-edition-5.md) | 70 | `declaration-track:c9854bdc687af41ad1b5d4a11704130c76cb5f1b4e7e2da82cb1cb9c00873c6c` |
| 7 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/instance-source-edition-2.md) | 74 | `declaration-track:3428a2241421279264c37c1bda08a86205643a7826f0bd85a224807b1792e8d0` |
| 8 | `lemma` | [Metric.star_ball](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/metric-star-ball.md) | 80 | `result-track:727a64ac99183319d4990261624ab4518310923bce7161b654e25521c15ad087` |
| 9 | `lemma` | [Metric.star_closedBall](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/metric-star-closedball.md) | 83 | `result-track:20e6066d3dc8b41e69b3948d834cab319ebf978a25ba16fd10bf3c4577c3dea9` |
| 10 | `lemma` | [Metric.star_sphere](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/metric-star-sphere.md) | 86 | `result-track:7cc161114c49e3605183537b6e07ddc0a08886e387cf1c8fe9be7a447d46f5fd` |
| 11 | `lemma` | [dist_star_star](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/dist-star-star.md) | 89 | `result-track:d5a3ddce52a19bef28d0058e4383510da49a9b2da541a570699d7f370a739dee` |
| 12 | `lemma` | [edist_star_star](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/edist-star-star.md) | 92 | `result-track:4a6916927d34b68d552ba1e6cffa92b8aeb90c080213541ffa6c81dc610291a2` |
| 13 | `lemma` | [nndist_star_star](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/nndist-star-star.md) | 95 | `result-track:22c1d5e0a83e0f9fdaa01533cc913b493a47c0b73c32f1d02bef1160c2d9fbc7` |
| 14 | `instance` | [RingHomIsometric.starRingEnd](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/ringhomisometric-starringend.md) | 100 | `declaration-track:603fd6e7c9984a6bf2e4fca20b8c84ac02a657e320ffe664fb926812c02d073d` |
| 15 | `class` | [CStarRing](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/cstarring.md) | 107 | `declaration-track:3da7aa3bbf09448ba57719f2b27625c72a1455e1f4e4bade38c47c90692404ac` |
| 16 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/instance.md) | 110 | `declaration-track:2aeb3c6113944407a01b63b90c1f0178c3a34d0a4811b05abb753f6f97831557` |
| 17 | `lemma` | [of_le_norm_mul_star_self](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/of-le-norm-mul-star-self.md) | 117 | `result-track:153f41e8557cb80348963b2f36ade3bb9459c9c86b3d407419ef120fd7dcd4f1` |
| 18 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/instance-source-edition-4.md) | 132 | `declaration-track:c66527aefc9f58701e95c44ba5206fd1469da1b2fcb6d7a8c67aa5289581efa3` |
| 19 | `theorem` | [norm_star_mul_self](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/norm-star-mul-self-source-edition-2.md) | 139 | `result-track:38f21f49d15c1b7118abad7c27ae3cc28ff128a14e01ff99b793c69f591b45d0` |
| 20 | `theorem` | [norm_self_mul_star](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/norm-self-mul-star.md) | 142 | `result-track:a7c45e1f9287f3e73e56e4c7f75cf5c07f57d62e40d9491e55d153457d83452d` |
| 21 | `theorem` | [norm_star_mul_self'](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/norm-star-mul-self.md) | 146 | `result-track:2b5166676ea2996e9c51f9a1730e87415812980ff7f51391ab8b08718633eeb9` |
| 22 | `theorem` | [nnnorm_self_mul_star](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/nnnorm-self-mul-star.md) | 148 | `result-track:d58fe82158377220cd4b08c3f7578d2acfa80d11ae9468d64ea665ef1e267301` |
| 23 | `theorem` | [nnnorm_star_mul_self](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/nnnorm-star-mul-self.md) | 151 | `result-track:96e70bf6181e88c6e1b8bb16f4ae720d09f087d0ca7ef4e2b8f1da4f85cdfcee` |
| 24 | `lemma` | [_root_.IsSelfAdjoint.norm_mul_self](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/root-isselfadjoint-norm-mul-self.md) | 154 | `result-track:30be868bdfa8e402713f06ae64a14ade8243fe35e099aaf42160a391c7d15a8b` |
| 25 | `lemma` | [_root_.IsSelfAdjoint.nnnorm_mul_self](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/root-isselfadjoint-nnnorm-mul-self.md) | 158 | `result-track:e62af0392faf69ece3c6748ef13d72837ffdc95b442bc37a01e48452bb856497` |
| 26 | `theorem` | [star_mul_self_eq_zero_iff](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/star-mul-self-eq-zero-iff.md) | 163 | `result-track:26f7f6ff82bef925a6e4a03c73ab0176b9a131e183ff91dc17efb1264f26f417` |
| 27 | `theorem` | [star_mul_self_ne_zero_iff](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/star-mul-self-ne-zero-iff.md) | 167 | `result-track:de18b1fcd68765275e7938a256625f4c3764a2084845feb57fce98d4d4cee532` |
| 28 | `theorem` | [mul_star_self_eq_zero_iff](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/mul-star-self-eq-zero-iff.md) | 171 | `result-track:cb4936f5409ea963efa6bd8a65ed4a42fed4a604b4f6bc54bf2dceda6635d808` |
| 29 | `theorem` | [mul_star_self_ne_zero_iff](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/mul-star-self-ne-zero-iff.md) | 174 | `result-track:517fdced8c20196d1f77d2875b16da7785bfe51ebfef5ecdf6f05a4a9828e176` |
| 30 | `instance` | [_root_.Pi.starRing'](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/root-pi-starring.md) | 188 | `declaration-track:011f05e7a7944fa0b470e4b95a5b439a77d98f835dd39d478b739f4a0807e0a8` |
| 31 | `instance` | [_root_.Prod.cstarRing](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/root-prod-cstarring.md) | 193 | `declaration-track:92a77d9f1e7a2df72fd6697bc96953d374d6ebc0fe4ab02bee97e0abd8561ce5` |
| 32 | `instance` | [_root_.Pi.cstarRing](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/root-pi-cstarring-source-edition-2.md) | 200 | `declaration-track:de69e2eb77c0bb35eb2285d133561cb750a6231082d5d3b3f8a160ae6342e006` |
| 33 | `instance` | [_root_.Pi.cstarRing'](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/root-pi-cstarring.md) | 209 | `declaration-track:568e612243147cd115d94587cd5653f73c88f8c4c435c9131d3e9c4e833352c8` |
| 34 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/instance-source-edition-3.md) | 216 | `declaration-track:a753dde62ffca977ea18010dc05fc53b8e55cb461bbc4b1ebe121279a4810575` |
| 35 | `theorem` | [norm_one](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/norm-one.md) | 226 | `result-track:70087b39cb4abd61f6f7264101ea76cd1104db66661fa67f8682c2f991d6ee3d` |
| 36 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/instance-source-edition-6.md) | 231 | `declaration-track:f4b9cb94274e961f4f1c8576ec1bd1fafc7fda5ab10d757b4f0f771593976e9a` |
| 37 | `theorem` | [norm_coe_unitary](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/norm-coe-unitary.md) | 235 | `result-track:7e4893739580d7f1c3d0f55ece537d583d7891acc75d2ab09fa333edc05b076c` |
| 38 | `theorem` | [norm_of_mem_unitary](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/norm-of-mem-unitary.md) | 239 | `result-track:fe48b19e9e5aeedac9f2a4d61c884280ffe2debffd95caf14bbff11d0610e9f4` |
| 39 | `theorem` | [norm_coe_unitary_mul](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/norm-coe-unitary-mul.md) | 243 | `result-track:6174f31f0917ee018bcfbd672f7857f223897377e06354d75fb41025b3b9a3ae` |
| 40 | `theorem` | [norm_unitary_smul](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/norm-unitary-smul.md) | 248 | `result-track:e13008bf405578e98796676f08c83deafded44af804d41da81d3bc01cd86e239` |
| 41 | `theorem` | [norm_mem_unitary_mul](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/norm-mem-unitary-mul.md) | 251 | `result-track:723ad2ba59769d825d7fac034c92e6c7a007ebbfaaf980870908854f15a66da4` |
| 42 | `theorem` | [norm_mul_coe_unitary](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/norm-mul-coe-unitary.md) | 255 | `result-track:00aaaa876f694bb804d92ba42893e4993db33fe19b9ad90484d347bcea091295` |
| 43 | `theorem` | [norm_mul_mem_unitary](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/norm-mul-mem-unitary.md) | 258 | `result-track:ebafa3bf39bace3002087f3cf55901381975806492e818e64444e82ef9bb3afc` |
| 44 | `theorem` | [IsSelfAdjoint.nnnorm_pow_two_pow](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/isselfadjoint-nnnorm-pow-two-pow.md) | 269 | `result-track:0c38f8a2a8d696c2316ede0ad3ccc8e0bd7bae6f67e0179b4b1458ef351cedc9` |
| 45 | `theorem` | [IsSelfAdjoint.norm_pow_two_pow](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/isselfadjoint-norm-pow-two-pow.md) | 276 | `result-track:050d667b30d784922f3707d08a231af3b707d8b1f82ff48d9439499e408489a9` |
| 46 | `theorem` | [IsStarProjection.norm_le](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/isstarprojection-norm-le.md) | 282 | `result-track:8588af74b7cf113129f26ea6109a8c09420c42159f754dc26a51462800b529b8` |
| 47 | `def` | [starₗᵢ](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/star.md) | 295 | `declaration-track:63d92c1f966e4eee93f8bcd2baf6f37ca93b21e5983050e053bcfdbb7edfb9ed` |
| 48 | `theorem` | [coe_starₗᵢ](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/coe-star.md) | 301 | `result-track:ef175e540bc8626f9503fdc5d71424525a35ca48e80333f44d8b9dcc3108b2fc` |
| 49 | `theorem` | [starₗᵢ_apply](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/star-apply.md) | 304 | `result-track:170ffeb4d04d85ce811767ef1a839afc1206c95875b868f75d1143282c2a5403` |
| 50 | `theorem` | [symm_starₗᵢ](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/symm-star.md) | 308 | `result-track:4916ac3856bd825700d2c4900a639412b2d5726e491b5b640416e7947082dde7` |
| 51 | `theorem` | [starₗᵢ_toContinuousLinearEquiv](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/star-tocontinuouslinearequiv.md) | 312 | `result-track:56f1fa54b06b41e76b67cac4e78df7a89fc2932cbe7a9e375a929b2b02cea751` |
| 52 | `theorem` | [toLinearEquiv_starₗᵢ](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/tolinearequiv-star.md) | 317 | `result-track:9e1d0bb5b0b694da9e90ac26d9be64b33eabe9c05c4936f003055efb630bc07c` |
| 53 | `example` | [(anonymous)](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/example.md) | 324 | `declaration-track:2a73bc91eb7c96260de8993875293b366678d4af5943fffda4ebc7a1ea26cdb2` |
| 54 | `instance` | [to_cstarRing](../../../../FunctionalAnalysis/CStarAlgebraBasicPublic.lean/declarations/to-cstarring.md) | 328 | `declaration-track:b5de5b8d361f85b70a47ae09dcb3f0f1b12945c34568b9c0aa20bb986d75388e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cb510bc4a9bebb8aa1ce26f83efc898ce6b0b8e92d9c81288513728cde2e0fc3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Basic/Variantbc67e3e3614632d68a9b4c5d8918eec7311e079e3a2c7e3f97f2cb2c180e4870.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Basic/Variantbc67e3e3614632d68a9b4c5d8918eec7311e079e3a2c7e3f97f2cb2c180e4870.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
