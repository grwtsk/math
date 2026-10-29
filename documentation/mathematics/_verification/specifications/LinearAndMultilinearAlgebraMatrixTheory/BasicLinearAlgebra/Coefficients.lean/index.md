# Verification target: GRWTSK.InformationTheory.ReedSolomon.Coefficients

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72ab41071c781bfa1ca7657dfef1f260cb193493",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/InformationTheory/ReedSolomon/Coefficients.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72ab41071c781bfa1ca7657dfef1f260cb193493`.

Source path: `GRWTSK/InformationTheory/ReedSolomon/Coefficients.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/InformationTheory/ReedSolomon/Coefficients.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.InformationTheory.ReedSolomon.Linear`](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Linear.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [encode0](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/encode0.md) | 10 | `declaration-track:7e5714ace262af06b9a91b098cdf1e1ccdbd85f893c8d594b8d3d1b04e32f161` |
| 2 | `def` | [recover0](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/recover0.md) | 11 | `declaration-track:ee94fa29ab3711e714dda96c99b18f7acb189f1fa23926d0288391e2ba2a5d90` |
| 3 | `def` | [roundTrip0](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/roundtrip0.md) | 12 | `declaration-track:ae2726586e62ac9fcaed74bdb72f3a6624fe88376005f8ea1d02d7f0c10291f8` |
| 4 | `def` | [encode1](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/encode1.md) | 15 | `declaration-track:f59f2969c64446182d9d1959aa7f2192400aca95205110d674c431cdeaddf5ba` |
| 5 | `def` | [recover1](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/recover1.md) | 16 | `declaration-track:42186a7e501ededd9faa77a3c78cc67e5d3b7d77083920af8cbdcf8f98fb08b9` |
| 6 | `def` | [roundTrip1](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/roundtrip1.md) | 17 | `declaration-track:ff02d3a7ea0f5071e829ebfdf72e4bc4edf99a37c49bb0b4b610146ba10f42a8` |
| 7 | `def` | [encode2](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/encode2.md) | 20 | `declaration-track:5f2c4bc7ce91fe7ae46602c9c271cbea432292e109ce88668b8c70f291834837` |
| 8 | `def` | [recover2](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/recover2.md) | 21 | `declaration-track:bdb4caf76c053b1da3fd34475a643272b5a957a2cb9be77afd38094bcc6f5dcc` |
| 9 | `def` | [roundTrip2](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/roundtrip2.md) | 22 | `declaration-track:2dc0df7aa70a9f6bca46048533353342c8dd325631d6d3c4b57ca6e262ec714d` |
| 10 | `def` | [encode3](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/encode3.md) | 25 | `declaration-track:1e9a83bac9ac436ddaf5d7f3dd3064555d309d68b306cb872efd8cd5f6753284` |
| 11 | `def` | [recover3](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/recover3.md) | 26 | `declaration-track:bf9988a1417a42be926f3ae5f1bfb060f3075dcb9375b7414784ab58a1793abd` |
| 12 | `def` | [roundTrip3](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/roundtrip3.md) | 27 | `declaration-track:3a691af8c703e5b25e570b59e0c4ba81fadbcf7232b2016593ddee202eeb666c` |
| 13 | `def` | [encode4](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/encode4.md) | 30 | `declaration-track:c656d4fa5c0ef618b09b785b84714457b265b129bc239b651d977fb1a3ca3c8b` |
| 14 | `def` | [recover4](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/recover4.md) | 31 | `declaration-track:b7a2287d2cde205739cbd416060d26faefca819e93537167be165c40eb2412fc` |
| 15 | `def` | [roundTrip4](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/roundtrip4.md) | 32 | `declaration-track:a359d038046d529723de61d545bac5081b872b3fbe104872e4b4ef302aeb07fd` |
| 16 | `def` | [encode5](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/encode5.md) | 35 | `declaration-track:10a96217b363b5265bf008b2c9a0d3488e51ff8624358820689fb491d9161a0e` |
| 17 | `def` | [recover5](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/recover5.md) | 36 | `declaration-track:566e476ca56f1b72c01a0b90a615124838280ff50e7a6eb5e9d36dbe39280d3e` |
| 18 | `def` | [roundTrip5](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/roundtrip5.md) | 37 | `declaration-track:62b25633793edc6a45f26d7e18cdb3e3017cab5d12b7a95f5d456cc3798bc79f` |
| 19 | `def` | [encode6](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/encode6.md) | 40 | `declaration-track:288efe05841a92315225d96ce46f53d0d8981083c185f7f28e531998ef33d25c` |
| 20 | `def` | [recover6](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/recover6.md) | 41 | `declaration-track:5930619801424b7700374a7bc098de72e44ad907ab6749f2193be6a522cb8cfd` |
| 21 | `def` | [roundTrip6](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/roundtrip6.md) | 42 | `declaration-track:d3baed21f51638b7711ac647d5193f70588cb60730368ed74d1d30eda66c5cb8` |
| 22 | `def` | [encode7](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/encode7.md) | 45 | `declaration-track:eabaa1539e77554b09c5533335f6d84f19f0365106893cb54e2ad30d660af8ce` |
| 23 | `def` | [recover7](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/recover7.md) | 46 | `declaration-track:00b4108375bd25830ba79967f666c4d78a5182e4c67769f26cde55fc9d1b3888` |
| 24 | `def` | [roundTrip7](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/roundtrip7.md) | 47 | `declaration-track:b64665ba854b66a7be367da36b5193852141c88f46aad8113404fd87ad6cb36d` |
| 25 | `def` | [encode8](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/encode8.md) | 50 | `declaration-track:d4047900311c8b5d9c04799eb864d784a54430193a13cfaa6032db37b5f6632a` |
| 26 | `def` | [recover8](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/recover8.md) | 51 | `declaration-track:86cf140155f39d976eebd3cb37d09318a880c7b8f59c06142c59bb877c426f7f` |
| 27 | `def` | [roundTrip8](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/roundtrip8.md) | 52 | `declaration-track:08c4505b26b516cb1d706e1c9ec99f88037c73224ddfe2eb92a429b4b609a87d` |
| 28 | `def` | [encode9](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/encode9.md) | 55 | `declaration-track:ecf59386714dca26bb2f5ff508dbc5e55674a06e8075bd8a563816bb19ed0c60` |
| 29 | `def` | [recover9](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/recover9.md) | 56 | `declaration-track:3a99297d2d67c813721862b67b55e9716131144251d49b517a2389a84638b804` |
| 30 | `def` | [roundTrip9](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/roundtrip9.md) | 57 | `declaration-track:fc33f66ced4088bd653044447a3c55bb86fa1a9da4a2be9d739b37bd0e04cdf0` |
| 31 | `def` | [encode10](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/encode10.md) | 60 | `declaration-track:2da6eb4c92444f9471839437b50ebdc7388de22f94b835a0d58708bc30a91b50` |
| 32 | `def` | [recover10](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/recover10.md) | 61 | `declaration-track:bee60e99be8b7e4bff5d07dee60fa7e56c4a56cec3bb0db38f21f16b84ecc237` |
| 33 | `def` | [roundTrip10](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/roundtrip10.md) | 62 | `declaration-track:22f40b797caf586f9e29a7974c6889715d520f4f0c798883c6a6b2d8bccc4c55` |
| 34 | `def` | [encode11](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/encode11.md) | 65 | `declaration-track:833d7b02d816492cd7871350b20cd21dc66858770130aef23c5df8055ee41fab` |
| 35 | `def` | [recover11](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/recover11.md) | 66 | `declaration-track:742cc81b020e998edba01a849c1e4d68250814c52155b7f29a4be614cceb009d` |
| 36 | `def` | [roundTrip11](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/roundtrip11.md) | 67 | `declaration-track:a601a7d7f263acc7443eb82986781818d52a2c4fa59d3636a2c1dbc11013b3f2` |
| 37 | `def` | [encode12](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/encode12.md) | 70 | `declaration-track:7e91e18b1721ac270af96e33684e499ef30e27df4ccf36b4de7689e359c42d62` |
| 38 | `def` | [recover12](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/recover12.md) | 71 | `declaration-track:b51fdf50a041962fd2e8021dec47b55236a5032dc2adb38a4edec60f4c1be6f1` |
| 39 | `def` | [roundTrip12](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/roundtrip12.md) | 72 | `declaration-track:0e4d9964b4071ba7765edc470df55bd9fc6f810dec84829e4c23ecec10530a7e` |
| 40 | `def` | [encode13](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/encode13.md) | 75 | `declaration-track:89d4c8fa989637778010544f0d1055fdffea9f2a806412d826fcc141a8c73edb` |
| 41 | `def` | [recover13](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/recover13.md) | 76 | `declaration-track:cb498a97878d9cfaf243653b175f64c3682042cb06dd2f4f502baac602b6a7d9` |
| 42 | `def` | [roundTrip13](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/roundtrip13.md) | 77 | `declaration-track:bf782f1a68d177b7b920a7e3a63e2871f8d3bf46e851da51f3308665f90277a9` |
| 43 | `def` | [encode14](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/encode14.md) | 80 | `declaration-track:77138d3ed0f9718fea97f18265d87b34e47eb7fe990c7a7cf8d2ab80a611fffc` |
| 44 | `def` | [recover14](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/recover14.md) | 81 | `declaration-track:f1bbf832cc1f04cf598fe79a78ba2883557a521862b454ab0ede4ea177680d75` |
| 45 | `def` | [roundTrip14](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coefficients.lean/declarations/roundtrip14.md) | 82 | `declaration-track:dca23ad7b80d3196a395fe145b283a9c91a6a832d72c5a595e7323f4e1af5a3c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=98dc0f734a7098a1161f616714ab68ac84d3c97e62119d2b18323085b64d6fb7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/InformationTheory/ReedSolomon/Coefficients.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Coefficients.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
