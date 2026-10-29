# Verification target: Smooth Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7688d9a32c03ec419d80638acb14ce051589252",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Smooth/Variant1a57af4f6521dc79422e72a2850e2a4a50d13335e4fbf9e8dcebeac1d23b44ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/SmoothPublic.lean/index.md) · [Full source](../../../../DifferentialGeometry/SmoothPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7688d9a32c03ec419d80638acb14ce051589252`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Smooth/Variant1a57af4f6521dc79422e72a2850e2a4a50d13335e4fbf9e8dcebeac1d23b44ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Smooth/Variant1a57af4f6521dc79422e72a2850e2a4a50d13335e4fbf9e8dcebeac1d23b44ed.lean.json)

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
| 1 | `def` | [smoothSheaf](../../../../DifferentialGeometry/SmoothPublic.lean/declarations/smoothsheaf.md) | 94 | `declaration-track:9c358c221990d5bcd02bef1249990e6c7ac10c0309cfc127346d3550c375dddd` |
| 2 | `instance` | [smoothSheaf.coeFun](../../../../DifferentialGeometry/SmoothPublic.lean/declarations/smoothsheaf-coefun.md) | 99 | `declaration-track:80fa26ab99e4142587120227ccb7367a9d38aee78f593681f0b7931bc264ccce` |
| 3 | `lemma` | [smoothSheaf.obj_eq](../../../../DifferentialGeometry/SmoothPublic.lean/declarations/smoothsheaf-obj-eq.md) | 107 | `result-track:78bdc8249c762c88a1e941254b713027d977458bdbd1dfd3e2994532a21c865f` |
| 4 | `def` | [smoothSheaf.eval](../../../../DifferentialGeometry/SmoothPublic.lean/declarations/smoothsheaf-eval.md) | 112 | `declaration-track:b94bf355c83a765015d059962e4a8b20f54bd5619bafe005e2a140c754a75655` |
| 5 | `def` | [smoothSheaf.evalHom](../../../../DifferentialGeometry/SmoothPublic.lean/declarations/smoothsheaf-evalhom.md) | 117 | `declaration-track:4fba9be21cbd91e87916e7bc363a62c0bfa7868d46512fa793089d4d33aaf3ae` |
| 6 | `def` | [smoothSheaf.evalAt](../../../../DifferentialGeometry/SmoothPublic.lean/declarations/smoothsheaf-evalat.md) | 125 | `declaration-track:4911321e51bd13266c898817c6a8c3af5d67471b010ddc890c82891443519dc1` |
| 7 | `lemma` | [smoothSheaf.ι_evalHom](../../../../DifferentialGeometry/SmoothPublic.lean/declarations/smoothsheaf-evalhom-source-edition-2.md) | 132 | `result-track:905d3385a773a4c2ebba123f34ca3951c3a4af6159375bcc7dc619cae12dcac8` |
| 8 | `lemma` | [smoothSheaf.eval_surjective](../../../../DifferentialGeometry/SmoothPublic.lean/declarations/smoothsheaf-eval-surjective.md) | 139 | `result-track:7b15499f4da20a0faf170204faa7afe41aedb01e44bec2373a8dd5f542b7398b` |
| 9 | `instance` | [(anonymous)](../../../../DifferentialGeometry/SmoothPublic.lean/declarations/instance-source-edition-4.md) | 144 | `declaration-track:91d0c1b4c5eab34160513facb81e5034f86e1dbd72e40e15740e2eca1ef71bc5` |
| 10 | `lemma` | [smoothSheaf.eval_germ](../../../../DifferentialGeometry/SmoothPublic.lean/declarations/smoothsheaf-eval-germ.md) | 149 | `result-track:3328a99c65c2e02185d7c54fafa5b586a052ad4701313879718af8cabee4cbf1` |
| 11 | `lemma` | [smoothSheaf.contMDiff_section](../../../../DifferentialGeometry/SmoothPublic.lean/declarations/smoothsheaf-contmdiff-section.md) | 154 | `result-track:a969688ce46c93954f32222d199759d6a7f55e10f75fef225d9dfe77ba96fefb` |
| 12 | `def` | [ContMDiff.smoothSheafHom](../../../../DifferentialGeometry/SmoothPublic.lean/declarations/contmdiff-smoothsheafhom.md) | 163 | `declaration-track:d5a7bb47e996e3ad126aa1776a7c4f87f98da3b67bc8b9941ac988fcdb1bce7d` |
| 13 | `instance` | [(anonymous)](../../../../DifferentialGeometry/SmoothPublic.lean/declarations/instance-source-edition-6.md) | 181 | `declaration-track:d84a15d0da673d9476730e997dfddf360d7c9ea37809aabcc79071c66bf05a1c` |
| 14 | `def` | [smoothPresheafGroup](../../../../DifferentialGeometry/SmoothPublic.lean/declarations/smoothpresheafgroup.md) | 189 | `declaration-track:d1abf39b98609c8fac5d610869ae0f8b9d8e1064891fc60a0960482dfa09fd37` |
| 15 | `def` | [smoothSheafGroup](../../../../DifferentialGeometry/SmoothPublic.lean/declarations/smoothsheafgroup.md) | 200 | `declaration-track:9ba64f6eccd23e65accd30c9c9cc45ee72b04e1bf0726f72de1ee9869662110e` |
| 16 | `instance` | [(anonymous)](../../../../DifferentialGeometry/SmoothPublic.lean/declarations/instance-source-edition-3.md) | 212 | `declaration-track:73a1c6aeee19dba0023976b4ab80f9b3ce5fd5a40dbc51ba3b7c0e2ecf567453` |
| 17 | `def` | [smoothPresheafCommGroup](../../../../DifferentialGeometry/SmoothPublic.lean/declarations/smoothpresheafcommgroup.md) | 220 | `declaration-track:9b792ecb84dc98b38444084b105ffbcc4944e8493a755ca8b4cb585495e2822a` |
| 18 | `def` | [smoothSheafCommGroup](../../../../DifferentialGeometry/SmoothPublic.lean/declarations/smoothsheafcommgroup.md) | 231 | `declaration-track:aec35540eccd1cc812ec4dc105eb3fb85d9293b61cf669d8a6ee4cbc2b68b4e4` |
| 19 | `def` | [smoothSheafCommGroup.compLeft](../../../../DifferentialGeometry/SmoothPublic.lean/declarations/smoothsheafcommgroup-compleft.md) | 245 | `declaration-track:0f6e1db40d75e0f7e16bd8fb35680a59575a0901ce64947c7228d414f4400fac` |
| 20 | `instance` | [(anonymous)](../../../../DifferentialGeometry/SmoothPublic.lean/declarations/instance.md) | 257 | `declaration-track:03300200966e7efa387c519e4e642ad464c564b96b3f1191543f49c0ff883771` |
| 21 | `def` | [smoothPresheafRing](../../../../DifferentialGeometry/SmoothPublic.lean/declarations/smoothpresheafring.md) | 262 | `declaration-track:5efd9ba16292be50ed59ee68e7b52facbf3f5a23eea1f62215e6640df7fa67e5` |
| 22 | `def` | [smoothSheafRing](../../../../DifferentialGeometry/SmoothPublic.lean/declarations/smoothsheafring.md) | 271 | `declaration-track:c1bd426e44f4cfffd6afa62ae7c1cf026ec2a195be6d696e94661603c07972d8` |
| 23 | `instance` | [(anonymous)](../../../../DifferentialGeometry/SmoothPublic.lean/declarations/instance-source-edition-5.md) | 283 | `declaration-track:ca26f4f8519e60e3ca6a62283bba56696017e921525ff3ac248fea5e67f503b7` |
| 24 | `def` | [smoothPresheafCommRing](../../../../DifferentialGeometry/SmoothPublic.lean/declarations/smoothpresheafcommring.md) | 288 | `declaration-track:350f3104a6655e2fcab189bdd64e73cee6e876e104daf1c169d83161d6d4d036` |
| 25 | `def` | [smoothSheafCommRing](../../../../DifferentialGeometry/SmoothPublic.lean/declarations/smoothsheafcommring.md) | 298 | `declaration-track:de0fcda7a4a60df3863e850b38d6143cec38d6d18973035df9e5ccbb5481ecdd` |
| 26 | `example` | [(anonymous)](../../../../DifferentialGeometry/SmoothPublic.lean/declarations/example.md) | 307 | `declaration-track:d6574603e4e9dce8a6645881c0212b95292590856e8aa7edd0317caf7d47113e` |
| 27 | `instance` | [smoothSheafCommRing.coeFun](../../../../DifferentialGeometry/SmoothPublic.lean/declarations/smoothsheafcommring-coefun.md) | 310 | `declaration-track:4f6abf29326c9f6b70fb9738070a39d56dcf9d94f587eab051ca9c7edf8e3497` |
| 28 | `def` | [smoothSheafCommRing.forgetStalk](../../../../DifferentialGeometry/SmoothPublic.lean/declarations/smoothsheafcommring-forgetstalk.md) | 318 | `declaration-track:4721ab7aedb7a3ce028f10c32e982e385f8d4d9436fac720974bdc82e9c0e3c4` |
| 29 | `lemma` | [smoothSheafCommRing.ι_forgetStalk_hom](../../../../DifferentialGeometry/SmoothPublic.lean/declarations/smoothsheafcommring-forgetstalk-hom.md) | 324 | `result-track:18f632ec5e5619ec12ddef47612c44ded6986073a76738c3dfc506a592adce76` |
| 30 | `lemma` | [smoothSheafCommRing.ι_forgetStalk_inv](../../../../DifferentialGeometry/SmoothPublic.lean/declarations/smoothsheafcommring-forgetstalk-inv.md) | 331 | `result-track:8babe60f68a71e87f5ae7f4cd2821a25ffc8f7888a343a4b85247b64122ae2bd` |
| 31 | `def` | [smoothSheafCommRing.evalAt](../../../../DifferentialGeometry/SmoothPublic.lean/declarations/smoothsheafcommring-evalat.md) | 342 | `declaration-track:2842e4df81b1f70b8a3c106fde36a387471ed04b44f7f36490e5d6917d967c22` |
| 32 | `def` | [smoothSheafCommRing.evalHom](../../../../DifferentialGeometry/SmoothPublic.lean/declarations/smoothsheafcommring-evalhom.md) | 349 | `declaration-track:94f487910ff95ebe4123036437423e6c8432d731205f76ea54f2bc99075edc0e` |
| 33 | `def` | [smoothSheafCommRing.eval](../../../../DifferentialGeometry/SmoothPublic.lean/declarations/smoothsheafcommring-eval.md) | 357 | `declaration-track:af53f6b2945c01d45b7c4bf04472127b21c8c79af8203a43b8bb6f4ec03fa437` |
| 34 | `lemma` | [smoothSheafCommRing.ι_evalHom](../../../../DifferentialGeometry/SmoothPublic.lean/declarations/smoothsheafcommring-evalhom-source-edition-2.md) | 363 | `result-track:b579351b401c2490cbb71d8f5e7aaabde95d564f213ccb3b83d4c75300bb5b4c` |
| 35 | `lemma` | [smoothSheafCommRing.evalHom_germ](../../../../DifferentialGeometry/SmoothPublic.lean/declarations/smoothsheafcommring-evalhom-germ.md) | 368 | `result-track:515e02361274eab987117597061924982f88c87137d36118d2f230d2e2f469db` |
| 36 | `lemma` | [smoothSheafCommRing.forgetStalk_inv_comp_eval](../../../../DifferentialGeometry/SmoothPublic.lean/declarations/smoothsheafcommring-forgetstalk-inv-comp-eval.md) | 376 | `result-track:01d04f1ab802aa7de5a68b0bc899c483df89c9d0fa75b99f2b3982c6611d5d18` |
| 37 | `lemma` | [smoothSheafCommRing.forgetStalk_hom_comp_evalHom](../../../../DifferentialGeometry/SmoothPublic.lean/declarations/smoothsheafcommring-forgetstalk-hom-comp-evalhom.md) | 388 | `result-track:efd7070fb63d678e491f1b7fdddc90cbff98b2db60251d24e34b0d0da3562298` |
| 38 | `lemma` | [smoothSheafCommRing.eval_surjective](../../../../DifferentialGeometry/SmoothPublic.lean/declarations/smoothsheafcommring-eval-surjective.md) | 395 | `result-track:9bf9b9aa741077c825ed7b48c8cd05b2557182b5e96a2d837d5cd675b0f4ea87` |
| 39 | `instance` | [(anonymous)](../../../../DifferentialGeometry/SmoothPublic.lean/declarations/instance-source-edition-2.md) | 402 | `declaration-track:2882f55ff5805c92da5040bc54bb027e611e98e42595f7d5236392ca047db35e` |
| 40 | `lemma` | [smoothSheafCommRing.eval_germ](../../../../DifferentialGeometry/SmoothPublic.lean/declarations/smoothsheafcommring-eval-germ.md) | 407 | `result-track:72b8345eb36598ac03a67bb2193b89ab877998e4cc4b9607e4d572c07a3cb749` |
| 41 | `def` | [ContMDiff.smoothSheafCommRingHom](../../../../DifferentialGeometry/SmoothPublic.lean/declarations/contmdiff-smoothsheafcommringhom.md) | 416 | `declaration-track:b9c4abddac22969afbd10c402f9fbe334644ecf065ed3b98b73e12b6fc52b0f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ae2b49f8c30de556ea83b260b67aeafcc211106a5903332cc703923bfb351051 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/DifferentialGeometry/Smooth/Variant1a57af4f6521dc79422e72a2850e2a4a50d13335e4fbf9e8dcebeac1d23b44ed.lean","GRWTSK/_verification/specifications/Geometry/DifferentialGeometry/Smooth/Variant1a57af4f6521dc79422e72a2850e2a4a50d13335e4fbf9e8dcebeac1d23b44ed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
