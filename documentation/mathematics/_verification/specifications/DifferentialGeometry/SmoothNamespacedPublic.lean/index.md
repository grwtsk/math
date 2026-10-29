# Verification target: Smooth Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be64afd7d24be3e00ba3bab182e2d930ac7a18ff",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Smooth/Variant88e18cb0b301420d097cee3e7adf8dec7995be37e4890ea72ce21f42bf1892c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/SmoothNamespacedPublic.lean/index.md) · [Full source](../../../../DifferentialGeometry/SmoothNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be64afd7d24be3e00ba3bab182e2d930ac7a18ff`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Smooth/Variant88e18cb0b301420d097cee3e7adf8dec7995be37e4890ea72ce21f42bf1892c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Smooth/Variant88e18cb0b301420d097cee3e7adf8dec7995be37e4890ea72ce21f42bf1892c6.lean.json)

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
| 1 | `def` | [smoothSheaf](../../../../DifferentialGeometry/SmoothNamespacedPublic.lean/declarations/smoothsheaf.md) | 102 | `declaration-track:ecbcb50d4c67d66657212e0fc0ff98b6e58e2442e1d835e29ca9f91e0ca1ad11` |
| 2 | `instance` | [smoothSheaf.coeFun](../../../../DifferentialGeometry/SmoothNamespacedPublic.lean/declarations/smoothsheaf-coefun.md) | 107 | `declaration-track:4d3cf6101257381b666347524b61cc442a70a58a3ad202a7df2161fe7dbb0994` |
| 3 | `lemma` | [smoothSheaf.obj_eq](../../../../DifferentialGeometry/SmoothNamespacedPublic.lean/declarations/smoothsheaf-obj-eq.md) | 115 | `result-track:26548fa187e2cb7a352a37d655c8096a6819870d862d37d7abb122b08e376e5f` |
| 4 | `def` | [smoothSheaf.eval](../../../../DifferentialGeometry/SmoothNamespacedPublic.lean/declarations/smoothsheaf-eval.md) | 120 | `declaration-track:89380e3f671f4e73668abe351ceb08f563804c26514a72f58ac88aed59bc3753` |
| 5 | `def` | [smoothSheaf.evalHom](../../../../DifferentialGeometry/SmoothNamespacedPublic.lean/declarations/smoothsheaf-evalhom-source-edition-2.md) | 125 | `declaration-track:f90c3938de9166161844b5ad5da9d2352d235353cc814e89ffa3a493669d5047` |
| 6 | `def` | [smoothSheaf.evalAt](../../../../DifferentialGeometry/SmoothNamespacedPublic.lean/declarations/smoothsheaf-evalat.md) | 133 | `declaration-track:366b4028f43989c7b1bda8405d050ebea6d45cbdb4c900521387ef71fd1251a2` |
| 7 | `lemma` | [smoothSheaf.ι_evalHom](../../../../DifferentialGeometry/SmoothNamespacedPublic.lean/declarations/smoothsheaf-evalhom.md) | 140 | `result-track:be895df2eb5d029c77577d932d6db940adbe0049d325f4198fe1f34fb8c75d68` |
| 8 | `lemma` | [smoothSheaf.eval_surjective](../../../../DifferentialGeometry/SmoothNamespacedPublic.lean/declarations/smoothsheaf-eval-surjective.md) | 147 | `result-track:6816c92deeb54554ea77041e32dd8236e1e303a93d00ef01e535bc9e9246d0ff` |
| 9 | `instance` | [(anonymous)](../../../../DifferentialGeometry/SmoothNamespacedPublic.lean/declarations/instance.md) | 152 | `declaration-track:2e842c944ee0e3652645f4adc4d2050031e52ac4af3b7e04c5af25cba60a60ee` |
| 10 | `lemma` | [smoothSheaf.eval_germ](../../../../DifferentialGeometry/SmoothNamespacedPublic.lean/declarations/smoothsheaf-eval-germ.md) | 157 | `result-track:a41eab4b8d881973913bdf03b331695e8b38358ffbdefdda6f952971ef0e4584` |
| 11 | `lemma` | [smoothSheaf.contMDiff_section](../../../../DifferentialGeometry/SmoothNamespacedPublic.lean/declarations/smoothsheaf-contmdiff-section.md) | 162 | `result-track:2269390eb898a987ee922a47af7a306d565480fb47c9b5ee4c801e6f0906b0f1` |
| 12 | `def` | [ContMDiff.smoothSheafHom](../../../../DifferentialGeometry/SmoothNamespacedPublic.lean/declarations/contmdiff-smoothsheafhom.md) | 171 | `declaration-track:cd37d2e2bcd486d14e72d331a3a7eda2e975f81c0bdb7133efc77d7bf40d89a7` |
| 13 | `instance` | [(anonymous)](../../../../DifferentialGeometry/SmoothNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 189 | `declaration-track:c3987c140c28c6d6f7b8042b59ba03460c70d377ec38867b1fd79c070dcf8f58` |
| 14 | `def` | [smoothPresheafGroup](../../../../DifferentialGeometry/SmoothNamespacedPublic.lean/declarations/smoothpresheafgroup.md) | 197 | `declaration-track:e09e0570545e14665da3def7b66a274119d3abfe40ad9fc5f3b5d97bbcdac0e1` |
| 15 | `def` | [smoothSheafGroup](../../../../DifferentialGeometry/SmoothNamespacedPublic.lean/declarations/smoothsheafgroup.md) | 208 | `declaration-track:c205c4449dae10121cae30db64e78b85582071630b6c6e2d33cae50f3b1dc5ca` |
| 16 | `instance` | [(anonymous)](../../../../DifferentialGeometry/SmoothNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 220 | `declaration-track:37c3df06e8ab1f8a05931fa5df978de4495fc690c48fdaff348cc75c0393ce76` |
| 17 | `def` | [smoothPresheafCommGroup](../../../../DifferentialGeometry/SmoothNamespacedPublic.lean/declarations/smoothpresheafcommgroup.md) | 228 | `declaration-track:602be8e637207f1bb91b5528bfc2e2d9e8537695049ad2ff28fff81a36c3b426` |
| 18 | `def` | [smoothSheafCommGroup](../../../../DifferentialGeometry/SmoothNamespacedPublic.lean/declarations/smoothsheafcommgroup.md) | 239 | `declaration-track:7a641abce428cbe064f43bc3af80efba3b84b3346d9834d57d95f0c8e6937644` |
| 19 | `def` | [smoothSheafCommGroup.compLeft](../../../../DifferentialGeometry/SmoothNamespacedPublic.lean/declarations/smoothsheafcommgroup-compleft.md) | 253 | `declaration-track:5bb4b056617cfdd9853740511e6d8092f7362ba1b79f1c687e4747a2abf6e42d` |
| 20 | `instance` | [(anonymous)](../../../../DifferentialGeometry/SmoothNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 265 | `declaration-track:ed997a616278e43a4664c0fa1fa97010ace3d0dbfbcbd430a34ea52bed9f0ce6` |
| 21 | `def` | [smoothPresheafRing](../../../../DifferentialGeometry/SmoothNamespacedPublic.lean/declarations/smoothpresheafring.md) | 270 | `declaration-track:18673c14092c9fdff92a61406a5f16a020f1523be9fac6b19656365dbfdf6d43` |
| 22 | `def` | [smoothSheafRing](../../../../DifferentialGeometry/SmoothNamespacedPublic.lean/declarations/smoothsheafring.md) | 279 | `declaration-track:e175407d5551f68961281612b55a8cb6c35b17658baec4d191d0f716e1533a47` |
| 23 | `instance` | [(anonymous)](../../../../DifferentialGeometry/SmoothNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 291 | `declaration-track:ee1be08fc921fa5f7766c1c888d16d7bff8f9cb932b6a1951aa605c64100eacb` |
| 24 | `def` | [smoothPresheafCommRing](../../../../DifferentialGeometry/SmoothNamespacedPublic.lean/declarations/smoothpresheafcommring.md) | 296 | `declaration-track:a30a943bb0fbe428348532f747444511687531c3f3da43cebaa62722d52bd812` |
| 25 | `def` | [smoothSheafCommRing](../../../../DifferentialGeometry/SmoothNamespacedPublic.lean/declarations/smoothsheafcommring.md) | 306 | `declaration-track:2345434eec377426eeb867207ca24660e0b42b40f765545d4de477b90875d619` |
| 26 | `example` | [(anonymous)](../../../../DifferentialGeometry/SmoothNamespacedPublic.lean/declarations/example.md) | 315 | `declaration-track:a49d3ec97970d208fcfe1b6fa0e3802e1a9ca042cc5f295f51fe6960cbe0302e` |
| 27 | `instance` | [smoothSheafCommRing.coeFun](../../../../DifferentialGeometry/SmoothNamespacedPublic.lean/declarations/smoothsheafcommring-coefun.md) | 318 | `declaration-track:07c715203b672ea304a9a9f9b2fa7682b0843e7bf9d56f053f73a2c08aaff3fb` |
| 28 | `def` | [smoothSheafCommRing.forgetStalk](../../../../DifferentialGeometry/SmoothNamespacedPublic.lean/declarations/smoothsheafcommring-forgetstalk.md) | 326 | `declaration-track:ad4db81d2c309acfd703caac6c52f391eb90dea9e5e8b090f483e79f38bbd577` |
| 29 | `lemma` | [smoothSheafCommRing.ι_forgetStalk_hom](../../../../DifferentialGeometry/SmoothNamespacedPublic.lean/declarations/smoothsheafcommring-forgetstalk-hom.md) | 332 | `result-track:81c70389c7cf332c7688b5c7bb2b47455b0ca33690d5aff079160f48c40affa1` |
| 30 | `lemma` | [smoothSheafCommRing.ι_forgetStalk_inv](../../../../DifferentialGeometry/SmoothNamespacedPublic.lean/declarations/smoothsheafcommring-forgetstalk-inv.md) | 339 | `result-track:bf460325a8d3810fa0fdefccbda199d3a47b4a6b60e948ab8b57cd360e27f2cb` |
| 31 | `def` | [smoothSheafCommRing.evalAt](../../../../DifferentialGeometry/SmoothNamespacedPublic.lean/declarations/smoothsheafcommring-evalat.md) | 350 | `declaration-track:0b5588f02e7c56dce08d7ddb120c0b2a01ca852b0f1041812ca3c74aa03482fa` |
| 32 | `def` | [smoothSheafCommRing.evalHom](../../../../DifferentialGeometry/SmoothNamespacedPublic.lean/declarations/smoothsheafcommring-evalhom-source-edition-2.md) | 357 | `declaration-track:e2ce66c8df4c5610043dff45a0dabade33fea407f30e0d5a50f645f3a2405948` |
| 33 | `def` | [smoothSheafCommRing.eval](../../../../DifferentialGeometry/SmoothNamespacedPublic.lean/declarations/smoothsheafcommring-eval.md) | 365 | `declaration-track:930684c1b92185ab0ee9a1d0ad38c1a39e9c60251213795c20a755e6800e6508` |
| 34 | `lemma` | [smoothSheafCommRing.ι_evalHom](../../../../DifferentialGeometry/SmoothNamespacedPublic.lean/declarations/smoothsheafcommring-evalhom.md) | 371 | `result-track:8a483136320f27e8599c18948ed9c3e0fd79bc935c6be11a3b56d1a6da3d38d5` |
| 35 | `lemma` | [smoothSheafCommRing.evalHom_germ](../../../../DifferentialGeometry/SmoothNamespacedPublic.lean/declarations/smoothsheafcommring-evalhom-germ.md) | 376 | `result-track:89506c09d5dfcdef528cb6791d2d4c98c022985d096277c90b19ba77e0c1a2af` |
| 36 | `lemma` | [smoothSheafCommRing.forgetStalk_inv_comp_eval](../../../../DifferentialGeometry/SmoothNamespacedPublic.lean/declarations/smoothsheafcommring-forgetstalk-inv-comp-eval.md) | 384 | `result-track:4842b4952905ee1afbb9bba6aad6f83cc7919a9e63fcb63a9566f77c9db846b4` |
| 37 | `lemma` | [smoothSheafCommRing.forgetStalk_hom_comp_evalHom](../../../../DifferentialGeometry/SmoothNamespacedPublic.lean/declarations/smoothsheafcommring-forgetstalk-hom-comp-evalhom.md) | 396 | `result-track:dad088d04b6ac62eb2b439873ae8fbe3fe5f8e419e7cd6068aea3e35a3b7e866` |
| 38 | `lemma` | [smoothSheafCommRing.eval_surjective](../../../../DifferentialGeometry/SmoothNamespacedPublic.lean/declarations/smoothsheafcommring-eval-surjective.md) | 403 | `result-track:5a30e53222c1ff2c0e047502d7c0fbd2c4905fad7a59ed2b491093e9ee2842eb` |
| 39 | `instance` | [(anonymous)](../../../../DifferentialGeometry/SmoothNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 410 | `declaration-track:68e46534d48714d627f44c6be4b884719739a7d862fc28cf3b591d6166888e3c` |
| 40 | `lemma` | [smoothSheafCommRing.eval_germ](../../../../DifferentialGeometry/SmoothNamespacedPublic.lean/declarations/smoothsheafcommring-eval-germ.md) | 415 | `result-track:7129ceeb84b16b5ff271234aebaff443d359095c12582f708f7a0f2a92dfddea` |
| 41 | `def` | [ContMDiff.smoothSheafCommRingHom](../../../../DifferentialGeometry/SmoothNamespacedPublic.lean/declarations/contmdiff-smoothsheafcommringhom.md) | 424 | `declaration-track:dc044a7f257e868938db5c74a786cdd97cb0fa2e2464771ef0f4833a7f0c1e5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=25b767008be01bd7b9ca8a6d1bf6cd502013cd7f187c06cb13c7660ac8cb5d06 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/DifferentialGeometry/Smooth/Variant88e18cb0b301420d097cee3e7adf8dec7995be37e4890ea72ce21f42bf1892c6.lean","GRWTSK/_verification/specifications/Geometry/DifferentialGeometry/Smooth/Variant88e18cb0b301420d097cee3e7adf8dec7995be37e4890ea72ce21f42bf1892c6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
