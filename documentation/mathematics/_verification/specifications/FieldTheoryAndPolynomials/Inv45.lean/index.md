# Verification target: GRWTSK.Algebra.FiniteField.GF128.Inv45

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b02ddb3321a36f7134066688d8de431ad3b809e",
  "lexical_observation_count": 385,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FiniteField/GF128/Inv45.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/Inv45.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/Inv45.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b02ddb3321a36f7134066688d8de431ad3b809e`.

Source path: `GRWTSK/Algebra/FiniteField/GF128/Inv45.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FiniteField/GF128/Inv45.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.FiniteField.GF128.InverseSteps`](../../../../FieldTheoryAndPolynomials/InverseSteps.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [inv45_square0](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square0.md) | 6 | `result-track:18959f49b898ed5992307d4574b01d056fcd80927132bc46c78b7284c7601769` |
| 2 | `theorem` | [inv45_square1](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square1.md) | 7 | `result-track:b6440c7d861531a12d788b6841fadf88e47f398659955c7af5cd4cf3701582cb` |
| 3 | `theorem` | [inv45_product1](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product1.md) | 8 | `result-track:a30814f5aa7d354070d1f3a191b63813606f270bd13a091e32e1a84c1a7f44fc` |
| 4 | `theorem` | [inv45_square2](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square2.md) | 9 | `result-track:4c5c8f1251fe81b6f44d5bfc92ead90cc1a43ea6743adac5fcee8ea776538b30` |
| 5 | `theorem` | [inv45_product2](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product2.md) | 10 | `result-track:ab89a3228b72e6b61e49cbf29fcb54c1d887de52c9ce194eee13360b7fd39675` |
| 6 | `theorem` | [inv45_square3](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square3.md) | 11 | `result-track:6b96e186b2bab8d565b5dcf11b5845baa3ca962c7831aaf90c0598de92702476` |
| 7 | `theorem` | [inv45_product3](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product3.md) | 12 | `result-track:d2e221b25ffbbc0738176430f69c62b2d6dbf1745b0318cd7f2f69ee02d6259f` |
| 8 | `theorem` | [inv45_square4](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square4.md) | 13 | `result-track:88a90020b95390becfc01e7d1f3f7b160323f61e0b5a90b159ab7d3a53efd9a0` |
| 9 | `theorem` | [inv45_product4](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product4.md) | 14 | `result-track:7bf4a3b9a9b4ba104f223339a7248e5645689e0e5a6a47ad938ba558c121510f` |
| 10 | `theorem` | [inv45_square5](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square5.md) | 15 | `result-track:c70945be681e63c946e6ae02c63383416de206b689ca934a3d30c0f7c9a5d70f` |
| 11 | `theorem` | [inv45_product5](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product5.md) | 16 | `result-track:e01ef0a7a36fa01757f45a980c687dc65d0d742db083196351a8dba9f6c4d011` |
| 12 | `theorem` | [inv45_square6](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square6.md) | 17 | `result-track:5a8184f836252684a2c69e187b545e3c26a68f92e58967d9b76dbb32b3af49d7` |
| 13 | `theorem` | [inv45_product6](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product6.md) | 18 | `result-track:0349793430eb51c096add59ee7eb0226187d266e6f777689706dfe049c8e1ded` |
| 14 | `theorem` | [inv45_square7](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square7.md) | 19 | `result-track:c7903592f800336f6848c822efb3df0613888d269d98dca6df84335eeebc3623` |
| 15 | `theorem` | [inv45_product7](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product7.md) | 20 | `result-track:1e913c9201ea9f886f4758dad9934b602042407624274215e2299c75386cd4c1` |
| 16 | `theorem` | [inv45_square8](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square8.md) | 21 | `result-track:d23d6fa29d9ca50ecd93261e70cea533d79f2f495d4ede2eff47e4c9642e5b82` |
| 17 | `theorem` | [inv45_product8](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product8.md) | 22 | `result-track:a871516aeb741240a0c2ff182d13101d2bddc985a354a19e093f759b8dc838d3` |
| 18 | `theorem` | [inv45_square9](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square9.md) | 23 | `result-track:f3d3e638f2b85f5b5398e99bcf794556444fb1a133158ddca7e7f888d503ea33` |
| 19 | `theorem` | [inv45_product9](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product9.md) | 24 | `result-track:8a863c8940885d94faa827f14f68bd1a54a51b7ab65574b64c6c56af5f1db7e6` |
| 20 | `theorem` | [inv45_square10](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square10.md) | 25 | `result-track:0f05420ce113e00418d214b075ecd193275de521ad455ed63820494265bc9907` |
| 21 | `theorem` | [inv45_product10](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product10.md) | 26 | `result-track:770059b5751de7a4bf12146c832c11754220727a42faa6eee37d7742c8df32c8` |
| 22 | `theorem` | [inv45_square11](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square11.md) | 27 | `result-track:2c4c9ef2b93d7c495861983cab7ceefe10721dd073c664679f47f65e54071f60` |
| 23 | `theorem` | [inv45_product11](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product11.md) | 28 | `result-track:ab3d5a9482473ebb587dddd326bf34a301d9af94c2e2628a0f54760c64b58273` |
| 24 | `theorem` | [inv45_square12](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square12.md) | 29 | `result-track:b0190986d23dc09995fe0ebc924552dd3a394536dc2b1a02a8825be4668d0ec2` |
| 25 | `theorem` | [inv45_product12](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product12.md) | 30 | `result-track:205677c9ea862530cf34881186079744a6870476a777c2267526a951df6fd3c0` |
| 26 | `theorem` | [inv45_square13](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square13.md) | 31 | `result-track:b204e40b27937ef0716eacc9ab39739f026c79f60ca4c3b85cc282416f858a92` |
| 27 | `theorem` | [inv45_product13](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product13.md) | 32 | `result-track:8a9220da6bb6c69a01c51cc79c3a0003b4a7c35d710a418af827b587f39f1f5c` |
| 28 | `theorem` | [inv45_square14](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square14.md) | 33 | `result-track:0eb465bbfe2be84207b3103c5ee37f2867b45444ac477c620de58e8bdb72fe6e` |
| 29 | `theorem` | [inv45_product14](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product14.md) | 34 | `result-track:868b283ad7c732d18f90177007cc5172eba2b301d5868b6360b6653701a071bd` |
| 30 | `theorem` | [inv45_square15](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square15.md) | 35 | `result-track:1a245cf5ceaa2dd1de16174c554aa1654d66b9a0604eeb6f2f516086ee19a169` |
| 31 | `theorem` | [inv45_product15](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product15.md) | 36 | `result-track:d66a8fca3faedbab1f864cdfcc50c0382cbf8e682fdab9321e8d1a811ab811ae` |
| 32 | `theorem` | [inv45_square16](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square16.md) | 37 | `result-track:cd5cae8f7f68c5725801afe4ac5ade679f8c632b83ade3e6f6f7e34b08039a99` |
| 33 | `theorem` | [inv45_product16](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product16.md) | 38 | `result-track:9e5672e327bfc418b5fdc88bdeaa8c2a1a0ba8b1b5eab8f2e344654d7f42110c` |
| 34 | `theorem` | [inv45_square17](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square17.md) | 39 | `result-track:751912be6352a9946d4f7fd9f8091fa99759db3ee821d9ba9e9e2d476214bacf` |
| 35 | `theorem` | [inv45_product17](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product17.md) | 40 | `result-track:7411690db8f5c1214164e4f4d781e1abbdcdd641c1d002a618abb4c8adc6897b` |
| 36 | `theorem` | [inv45_square18](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square18.md) | 41 | `result-track:ac651878b3a31fa6d86310b88626d2e997a70605c9d6fc16bbd9efe440b25dc2` |
| 37 | `theorem` | [inv45_product18](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product18.md) | 42 | `result-track:4d6a57b65628e7295039204a13162c80509b46c49221dcd9c6b29554d31e514b` |
| 38 | `theorem` | [inv45_square19](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square19.md) | 43 | `result-track:02bd971eaad941742d62e188802ab04a7524b6340afe4e1a671f04468285fe21` |
| 39 | `theorem` | [inv45_product19](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product19.md) | 44 | `result-track:f6e337416ee94e27e50a59d517a20d98228af05247bdd8c5feafc3ccb0bc8f9c` |
| 40 | `theorem` | [inv45_square20](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square20.md) | 45 | `result-track:00d43343a1cb8d30d9419d26a6ad6424b1e1ad8c1b66a56710df57f54a04d935` |
| 41 | `theorem` | [inv45_product20](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product20.md) | 46 | `result-track:58d5115d1af1ae433792c0a5599460ac1b1ee3089db8ab5c35324d43d6de3ce0` |
| 42 | `theorem` | [inv45_square21](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square21.md) | 47 | `result-track:ae2771a1a3d5e5828c39cb53cc3e5bc55f9dcf2224b63140dc4a0cbdec23a676` |
| 43 | `theorem` | [inv45_product21](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product21.md) | 48 | `result-track:e43a33d95921d3009951166da9426666c489ec84538f32aecd60b313a692f347` |
| 44 | `theorem` | [inv45_square22](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square22.md) | 49 | `result-track:dde39006754ba8d190eeb89da8cfc4289690993606cb7c21204bcd91355a8ea7` |
| 45 | `theorem` | [inv45_product22](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product22.md) | 50 | `result-track:2470eb4336f5e2e467adf0732c7b3f547d3999458ecfca7658ae52356a6d1ad1` |
| 46 | `theorem` | [inv45_square23](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square23.md) | 51 | `result-track:ffa0036970a636bdd74c4c02026732576d54ff5cc9dc62747b75112f9a9b5ced` |
| 47 | `theorem` | [inv45_product23](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product23.md) | 52 | `result-track:23008830a3f5f835d2d82e103ec2de2cf514e1203b363ae1fbc207a677bb3b4b` |
| 48 | `theorem` | [inv45_square24](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square24.md) | 53 | `result-track:36b79d35e3e0409470ce55314566cc96bb2b4be0c598f0a32ad56ad58d7cb450` |
| 49 | `theorem` | [inv45_product24](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product24.md) | 54 | `result-track:215a25855515f34518888338056addb9f281b51d0ebca07f98f2203a4764444a` |
| 50 | `theorem` | [inv45_square25](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square25.md) | 55 | `result-track:f53d38f20e2798fc09e0122d1dac9ec3252065a756683462c3fca3702ab91879` |
| 51 | `theorem` | [inv45_product25](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product25.md) | 56 | `result-track:0f23abb9f2c386930d9c5e1fe5dbbbe1a857902828fe2f624e5fa86a884ea503` |
| 52 | `theorem` | [inv45_square26](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square26.md) | 57 | `result-track:4677a8baa73cd8e6ba5b703e335e31cc093e1fddac6b699b6fae6dda1b3304f1` |
| 53 | `theorem` | [inv45_product26](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product26.md) | 58 | `result-track:c70827e2ca9158fc15cf360a40ed8e49f602264cc852dec47b67f304c5008f1c` |
| 54 | `theorem` | [inv45_square27](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square27.md) | 59 | `result-track:2723bf8041abe70a7f31c7dfad8304d715e57355c1e76b3cd7432417651394ce` |
| 55 | `theorem` | [inv45_product27](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product27.md) | 60 | `result-track:dcf1bdf94eb7b14cbc728204728bc137f1d83d442ae4d0a339d6b5033f85a855` |
| 56 | `theorem` | [inv45_square28](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square28.md) | 61 | `result-track:fe65bd65aaf17e2c663665f0468a1b545a6df66c67aee0407f683f3c21293725` |
| 57 | `theorem` | [inv45_product28](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product28.md) | 62 | `result-track:ddca0e9b86425465efbbfe7e6753c6fed81d1df9f517b389e61e0db9e8e388a0` |
| 58 | `theorem` | [inv45_square29](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square29.md) | 63 | `result-track:dd1b5e5489de8269bfb3420cec84c7ad206e91828751d8353f36752c05673c2f` |
| 59 | `theorem` | [inv45_product29](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product29.md) | 64 | `result-track:6deb068a88ac1bf0d12db70067494e8f55cb2c48b03f8e146f7202e5b30896f0` |
| 60 | `theorem` | [inv45_square30](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square30.md) | 65 | `result-track:26b735e388ff34b5e6ccef84adc3b996c9bdb7fdb73b37f2c8a8c557183f44c2` |
| 61 | `theorem` | [inv45_product30](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product30.md) | 66 | `result-track:8689b9dcca6912a4a7e10932100b7e7e02bd8092b372791a5d3de9c9cfc85ccc` |
| 62 | `theorem` | [inv45_square31](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square31.md) | 67 | `result-track:a8f2bfd021fbabf9a2cf6aa2c66a3dec67220932ddf2743ad9902d3c83911b16` |
| 63 | `theorem` | [inv45_product31](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product31.md) | 68 | `result-track:ae315317ef2f8f5dc8e2fc39641566c781363980e9c2c2bad71210118e21fa9a` |
| 64 | `theorem` | [inv45_square32](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square32.md) | 69 | `result-track:eba6e4f2dfab1850cacac58fbc36bde4fa847c4a6f22fafb12043b926816f65d` |
| 65 | `theorem` | [inv45_product32](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product32.md) | 70 | `result-track:562150399299b4b8a0db0897f31ec391753b30ccb0877c7a0340c5cd392cccda` |
| 66 | `theorem` | [inv45_square33](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square33.md) | 71 | `result-track:53bddf4d1b3fd892f649640960b3e5b5d01d117d11ac802cd333ac95c9a4fb81` |
| 67 | `theorem` | [inv45_product33](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product33.md) | 72 | `result-track:b778dc7f69e8668ad5b6e9d101e1df1e89a48d288024795fd438585862390b03` |
| 68 | `theorem` | [inv45_square34](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square34.md) | 73 | `result-track:47a0d47ec812a907db1413e5727c4d786758eff332a0a19912bfd76dae3a0147` |
| 69 | `theorem` | [inv45_product34](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product34.md) | 74 | `result-track:1a1aa668b34e16b2b15f0ffcc2dd2f5a5abd6a378135ea5f4ac3fbb7eca15104` |
| 70 | `theorem` | [inv45_square35](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square35.md) | 75 | `result-track:1935f4cd74120a8db46e9d101cbf01a2c0d0ee272399e1e73e018bbc2791a4f1` |
| 71 | `theorem` | [inv45_product35](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product35.md) | 76 | `result-track:97e6a01eba71404c7d641fdb18211eb8c54c4146f767fccccb8e9ec8d3d8e1b2` |
| 72 | `theorem` | [inv45_square36](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square36.md) | 77 | `result-track:6b0865bbd3a3421540ed08e401619a01f8ee310ec1320ad787794f22b5236777` |
| 73 | `theorem` | [inv45_product36](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product36.md) | 78 | `result-track:0df6f894e1d9a8e7054b5192f8a724570c76fa7226566166f9310b506456893b` |
| 74 | `theorem` | [inv45_square37](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square37.md) | 79 | `result-track:506a3c1f37c16887c272a00ff509449ab08a93df88b32275c25d7bdf9a475a13` |
| 75 | `theorem` | [inv45_product37](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product37.md) | 80 | `result-track:6157a10ec2c3e047513212d825794106d6a9c45ee0ef5f9fad1a991d04fc6db3` |
| 76 | `theorem` | [inv45_square38](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square38.md) | 81 | `result-track:993a5e2551c143ecc63921727cb7528a55e1fef8d5107f6b558d028fe8717ccf` |
| 77 | `theorem` | [inv45_product38](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product38.md) | 82 | `result-track:5cdb0354d6ade0f4f95c6f6a50fc8d326be09d1eea9b29e597c619b674d82bca` |
| 78 | `theorem` | [inv45_square39](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square39.md) | 83 | `result-track:c1e67b8b359457cd915555927477aa1f4e19b6ed38d7464dda2076031a615a77` |
| 79 | `theorem` | [inv45_product39](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product39.md) | 84 | `result-track:fc23a0c981d09a6f6054b8741c9b3fbf4b64e31f33d4f4887a004d998ff5856f` |
| 80 | `theorem` | [inv45_square40](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square40.md) | 85 | `result-track:2945641ca2b9787d63346b6498723dc82827d34e9cbd5d8fd3a40ce9d246bb32` |
| 81 | `theorem` | [inv45_product40](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product40.md) | 86 | `result-track:9b5a108eafeacd17fef3b24486d443b2b9f1afda95a0eadac2289fbb6972ae43` |
| 82 | `theorem` | [inv45_square41](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square41.md) | 87 | `result-track:d70c6e84c4f5be0f1bf5d21fdc53fc78a2e7f38a2a7e1a03215d5c7beb466782` |
| 83 | `theorem` | [inv45_product41](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product41.md) | 88 | `result-track:aa7970d16389545db8e510d40bdc8bd22d84297da149e0f88437856081597d97` |
| 84 | `theorem` | [inv45_square42](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square42.md) | 89 | `result-track:1d612299182f48a3aa928fe8ad730cfb5fa33e3567756f1da09890f4e942ca8c` |
| 85 | `theorem` | [inv45_product42](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product42.md) | 90 | `result-track:f1303cd78da66422899646bdc2dea9d0a1550781d4a3f43b2c57d76712ca1c90` |
| 86 | `theorem` | [inv45_square43](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square43.md) | 91 | `result-track:67bd7162e6ea83dfc81e4b99acc513382a44777d15ba470181388f5d5aa0c62e` |
| 87 | `theorem` | [inv45_product43](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product43.md) | 92 | `result-track:fa013cae5d212d8a13277a92108f72ae571312444b94a2bc13e295fd6fcf959d` |
| 88 | `theorem` | [inv45_square44](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square44.md) | 93 | `result-track:d04c2556c2ca8f66555c58037312cf58a9c8c43cbc8db3f7862f873791ea637d` |
| 89 | `theorem` | [inv45_product44](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product44.md) | 94 | `result-track:25c21f011217fbccf9761b57baa45f8d793a2b17b037241e8e545c6df7d30a24` |
| 90 | `theorem` | [inv45_square45](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square45.md) | 95 | `result-track:d5a7b6a4f2b26f8c9544b0b26fbfa4d33d52eec3eb5c0d5a10d31956d32a1dde` |
| 91 | `theorem` | [inv45_product45](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product45.md) | 96 | `result-track:8e72cbfb557c32f09edfb21192887d75f578c90ff28328e5c2b51fcb2f44477a` |
| 92 | `theorem` | [inv45_square46](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square46.md) | 97 | `result-track:56cf57de0af79a8ebc9c1a4ff7870d5cc740cc54140eb13871dcc9a1dd566bd0` |
| 93 | `theorem` | [inv45_product46](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product46.md) | 98 | `result-track:e3b9e1c6894eb5c1d57b425e91f2db7cb60a43be632ab4a456068d7ea00cf498` |
| 94 | `theorem` | [inv45_square47](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square47.md) | 99 | `result-track:71c997a919d8f20df98cb4a1f4dd09ead3e850790860d55b58779123b9ee6792` |
| 95 | `theorem` | [inv45_product47](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product47.md) | 100 | `result-track:19c0dcd833aa4d02edeecef85e3c5cc8919107b5e5cfb9a829f52eb632410bb4` |
| 96 | `theorem` | [inv45_square48](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square48.md) | 101 | `result-track:a46f4660d849bf60ecc9d26f380a6137a30accf1821ef09d1720fa4690085aa0` |
| 97 | `theorem` | [inv45_product48](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product48.md) | 102 | `result-track:a9e1211920e82fb496b6298367e820431792d55467af070a6706cc3404dc0375` |
| 98 | `theorem` | [inv45_square49](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square49.md) | 103 | `result-track:1d121f6e09e06477d810a80df27a21a927b6857448fc34b2b5a89d8da5e2fc24` |
| 99 | `theorem` | [inv45_product49](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product49.md) | 104 | `result-track:f9293a6cb1b170d6023273b09f87828c5e4df1a33a09373373dec3310ea65ba5` |
| 100 | `theorem` | [inv45_square50](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square50.md) | 105 | `result-track:02f819f2dfcc63e54c8fc6f0adb4f9615578647958db1bd752eb1641d12707d6` |
| 101 | `theorem` | [inv45_product50](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product50.md) | 106 | `result-track:105814c978cf6765e8397c5ab0beb24ebe50df341e127b08124a7fed3d7c350c` |
| 102 | `theorem` | [inv45_square51](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square51.md) | 107 | `result-track:f70a7318c2c62fb49ce6bfd9d6265d84ab3a10e2a5b0f63e59e30e99a4cd151a` |
| 103 | `theorem` | [inv45_product51](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product51.md) | 108 | `result-track:58179ff20a98a48c61bfbcf6af3247ce6d53691e5733d3f80e6406cded2c8639` |
| 104 | `theorem` | [inv45_square52](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square52.md) | 109 | `result-track:ec16aba930f1abfba50501b7f77321edbc7e141ca04dc14cb0fef79c31c94da8` |
| 105 | `theorem` | [inv45_product52](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product52.md) | 110 | `result-track:a273c8eb42e246986822479e72c013e2a8f49e1ada1586d5e7142ab3e075a1dc` |
| 106 | `theorem` | [inv45_square53](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square53.md) | 111 | `result-track:03d5e70f137132efc73f3db1c0570e8cd09fdadf699b677654380006e61f8143` |
| 107 | `theorem` | [inv45_product53](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product53.md) | 112 | `result-track:835d60c112528a92ecabecf3464780d3b5e0ebe3bcdb15f2fe0e378702a981f8` |
| 108 | `theorem` | [inv45_square54](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square54.md) | 113 | `result-track:4bd0894e731968fea7d8c1fb47f41dc4572329dee4055fc0a9d7809ebc66cff3` |
| 109 | `theorem` | [inv45_product54](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product54.md) | 114 | `result-track:1309b340ec01ed7f194db83b3593ddbc2e23b8c8b6f7b22bdc0e0ff66fb5a880` |
| 110 | `theorem` | [inv45_square55](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square55.md) | 115 | `result-track:5f047f80a497b6e5bb2ed6e8dcc3870b3be1cb4bfefb4763c4e2d47865a99948` |
| 111 | `theorem` | [inv45_product55](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product55.md) | 116 | `result-track:e2e08a8a0baa3e6ddbd1356fcbb8afde6dd9d88c172d8142a2273f75011f9fe5` |
| 112 | `theorem` | [inv45_square56](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square56.md) | 117 | `result-track:6e60dea3c536672747f09a65e70c4ac36eaae10ec7a359626ab27bc1b3b2f30a` |
| 113 | `theorem` | [inv45_product56](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product56.md) | 118 | `result-track:bdfedee1ddd2265d92b1f484b6f6813de45087f7cf76d9d321e2ac139f34c27d` |
| 114 | `theorem` | [inv45_square57](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square57.md) | 119 | `result-track:8089c5e32358dd486fc971529bb6a3120b93c7bfc911302a27da6f0d816abe13` |
| 115 | `theorem` | [inv45_product57](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product57.md) | 120 | `result-track:d60a4bae7c54a2d2e972973bac404f779c0199cde9f02498125c142ed70fbcb8` |
| 116 | `theorem` | [inv45_square58](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square58.md) | 121 | `result-track:08d9058d520fc277899dd51ab332350584271ef1ccd7307f7ff760ac62bd44e6` |
| 117 | `theorem` | [inv45_product58](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product58.md) | 122 | `result-track:b34b57615f3ee739cfd6de02665c3755e2ec7b2e99f572e5d2462bbd7d715e15` |
| 118 | `theorem` | [inv45_square59](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square59.md) | 123 | `result-track:29363b6e129532d06991ad842a7e591dfcd3f0169380f53bb0c0bd2ea2c7e893` |
| 119 | `theorem` | [inv45_product59](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product59.md) | 124 | `result-track:3b6c33e29cdabb4bc4e618ccd02f38b2ebaaca83423e4fbd540260ba9ea75545` |
| 120 | `theorem` | [inv45_square60](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square60.md) | 125 | `result-track:008d41f50e000b73555b23b029c1fd6e283457bb703d3532f2b5bd5b03e33d4c` |
| 121 | `theorem` | [inv45_product60](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product60.md) | 126 | `result-track:4b059def6cdc9a79e8fee19e82ee1cd6aec82a3bc53a8545feb81042a317594e` |
| 122 | `theorem` | [inv45_square61](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square61.md) | 127 | `result-track:8c8d612177be687e53bd41f35fd4af4ec075aaa25c349bb453dcb14fbd7c1eae` |
| 123 | `theorem` | [inv45_product61](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product61.md) | 128 | `result-track:0d613d0d70c5655ce6187261a665b9361c553029cf2d388101509949dcf26a14` |
| 124 | `theorem` | [inv45_square62](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square62.md) | 129 | `result-track:b9bc712c8abce4d9370578adceb6e6da6a42b42d4d8325f6de1205a1c9370471` |
| 125 | `theorem` | [inv45_product62](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product62.md) | 130 | `result-track:7986af79617273ae797802f64718e25d29da8e689ae719e240bad61b90478189` |
| 126 | `theorem` | [inv45_square63](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square63.md) | 131 | `result-track:97112a545e75047e5a70cfd85f00e366b31a6c7426c70097d65a9f5a86f0a0ca` |
| 127 | `theorem` | [inv45_product63](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product63.md) | 132 | `result-track:dfd9fb23ed0d5b92a0f575d36249d6bc2ca48aa4d56fc1158b6b6b73c29744d9` |
| 128 | `theorem` | [inv45_square64](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square64.md) | 133 | `result-track:cded4e84d5f54f0ace30d9c4b082aa6a932456d166d26eb6f2b99dd2cda789e9` |
| 129 | `theorem` | [inv45_product64](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product64.md) | 134 | `result-track:d0c322a7c537082572a45d8bd0782fe3f84b9d254b543e500ffa18a371790c03` |
| 130 | `theorem` | [inv45_square65](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square65.md) | 135 | `result-track:60caa141ba15b9d83971c55d5fa9640d3e0132b412426c133acb48c210e482a8` |
| 131 | `theorem` | [inv45_product65](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product65.md) | 136 | `result-track:b10cf7e4665ab22c127d1757a36d7ff08bcc10d1dd407dcf85455dd98c24e4de` |
| 132 | `theorem` | [inv45_square66](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square66.md) | 137 | `result-track:cc768a05c7a9d6e409dab622cdff188055aa7628501b8fae71bcf89fea6b4aac` |
| 133 | `theorem` | [inv45_product66](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product66.md) | 138 | `result-track:533673841264d6325edaff3cad40081240fe10a2669e2bed3119bf99c8cdf7d3` |
| 134 | `theorem` | [inv45_square67](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square67.md) | 139 | `result-track:3357a1de43d6ea03af354b2f9074467db32f5e2c7a80562e6b471ff8e8c0cfbe` |
| 135 | `theorem` | [inv45_product67](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product67.md) | 140 | `result-track:014857533a1a91307f8dab213b6a79abef1c1493735dc2b7f6b9c5250cab6ae2` |
| 136 | `theorem` | [inv45_square68](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square68.md) | 141 | `result-track:2cf3b1b41cb70ce0234a7134d5c15029f7035dd0dd3ec80635612c64fdb4a154` |
| 137 | `theorem` | [inv45_product68](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product68.md) | 142 | `result-track:fded4ccee5572775af089dcdaf6cf3199beef69c9f55c61a8984eec9fdc1206f` |
| 138 | `theorem` | [inv45_square69](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square69.md) | 143 | `result-track:ddf96208708edc557ac4f0135500fcc0e5746a5e0c5eda26a09f3d6ff76f0007` |
| 139 | `theorem` | [inv45_product69](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product69.md) | 144 | `result-track:ea050966e0c0084ecd4e696684313a3fb8e2e1033cf6dbfd059b6920e891976c` |
| 140 | `theorem` | [inv45_square70](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square70.md) | 145 | `result-track:8404a0c6bc2b0a7e8faee4529332d4b55c7cc2a0d66925116daad31493b71cba` |
| 141 | `theorem` | [inv45_product70](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product70.md) | 146 | `result-track:50543f0a2c7ad5d955a48aeec68fc97095edabcd686564ce20f988f42da1dbe6` |
| 142 | `theorem` | [inv45_square71](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square71.md) | 147 | `result-track:daeffc8a99cc75b908dffbcfd9f70ad7789493b274d1c5262ed9f4c4b4b631bd` |
| 143 | `theorem` | [inv45_product71](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product71.md) | 148 | `result-track:e2e4d335db12afb01d05edb313b2a11ad80e23893d2396e53321e3871cd87d65` |
| 144 | `theorem` | [inv45_square72](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square72.md) | 149 | `result-track:92b9ad6d768d1f6332215e262f0db316460f61948781a08f02139d010b0e2c45` |
| 145 | `theorem` | [inv45_product72](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product72.md) | 150 | `result-track:03cc5bf1250587a4b13820db08996bad4b818ec6b0f40f54afdaee3bf1ce2915` |
| 146 | `theorem` | [inv45_square73](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square73.md) | 151 | `result-track:d98f7e798255792f64fcfb2e9ac690341abbc42a908d61d390ac67407b189ff0` |
| 147 | `theorem` | [inv45_product73](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product73.md) | 152 | `result-track:ffae199fc1fabaac4ec50c6a36665382a29acebca71aefa230400a86229ef02e` |
| 148 | `theorem` | [inv45_square74](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square74.md) | 153 | `result-track:4584f95b9420f95f928db4007bd9ff82546eb5af77228c6be238d15cc30e6a55` |
| 149 | `theorem` | [inv45_product74](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product74.md) | 154 | `result-track:879e706bcd8a597dea810c1fb6d1a91e7f947ce71ea70f99794d5740f9637729` |
| 150 | `theorem` | [inv45_square75](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square75.md) | 155 | `result-track:50c880361a8db9bf6ac0ca6d97802ba99ed24eff696b123c2a6ff7d8f25cc9af` |
| 151 | `theorem` | [inv45_product75](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product75.md) | 156 | `result-track:d407d9f970d0f154df205ee8114c62c6cd34d2da24eb9a8a8635655c6caa334c` |
| 152 | `theorem` | [inv45_square76](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square76.md) | 157 | `result-track:96b078d1315a8c2e1e34fe59da8efe00535d7b70e1f51947e6471b8dbf3844d3` |
| 153 | `theorem` | [inv45_product76](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product76.md) | 158 | `result-track:13c12b3fee29007727764a68e60dba0428c0fbc796571bf9619ad4d676df7441` |
| 154 | `theorem` | [inv45_square77](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square77.md) | 159 | `result-track:9294e2042b021374499d0b9d72c952aad79fe25602bcfd6464d36b635eaab9a7` |
| 155 | `theorem` | [inv45_product77](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product77.md) | 160 | `result-track:00f91bf36ad971ee8a2f7ce6d48a4593fcc2064d07f41fa93f34d447313a8ccc` |
| 156 | `theorem` | [inv45_square78](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square78.md) | 161 | `result-track:16effcda3c79e2dc20a2351e050375aa6be2c33d73057ada068828c32e2af5be` |
| 157 | `theorem` | [inv45_product78](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product78.md) | 162 | `result-track:49466bf7648bc30cab3a1045ba39a384af55ea3ca57adeeae4dc33ab27246fd1` |
| 158 | `theorem` | [inv45_square79](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square79.md) | 163 | `result-track:f72b4ff6e831823807c4b9215b3860fc36211c965ad22290ba3b0b65f8396407` |
| 159 | `theorem` | [inv45_product79](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product79.md) | 164 | `result-track:d7d1489bbac5fb76478a004d3f6126e128a3e6f163261ca59ab1ffcefad159dc` |
| 160 | `theorem` | [inv45_square80](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square80.md) | 165 | `result-track:224557b24cca0b1d59230c119df3ebbd85da91425ba40b4f44a7a315a0c1c384` |
| 161 | `theorem` | [inv45_product80](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product80.md) | 166 | `result-track:f20a739a0cb8ff56fafb1ca3f74e9c8b200a1af6fc6b968400d3bae86fee0cea` |
| 162 | `theorem` | [inv45_square81](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square81.md) | 167 | `result-track:8995f83d205c39e4b017d03cd000c1e8882354662b4f4cb6a9ce1ad5a5be3735` |
| 163 | `theorem` | [inv45_product81](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product81.md) | 168 | `result-track:a2a2d520bf6f2a11a5b0a0de1a6146e94b870e719209b3304f5cd7962501ddfa` |
| 164 | `theorem` | [inv45_square82](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square82.md) | 169 | `result-track:54d74ea3e8d5dba1db537f64979de10e3e09c120d324b23ebb90be7962b7c66a` |
| 165 | `theorem` | [inv45_product82](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product82.md) | 170 | `result-track:9401b5a5e88de87a7ceffb7c385e40d07c6eecdb20a115bf5c69c115e3ade704` |
| 166 | `theorem` | [inv45_square83](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square83.md) | 171 | `result-track:3173e198e1c329fba549d0944f47e3ca0b1e498ac2ef30eccb03c250b2607aa4` |
| 167 | `theorem` | [inv45_product83](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product83.md) | 172 | `result-track:088617f791883386f6a95c0495989fbc953618bf13be0868da9a8624731e19bd` |
| 168 | `theorem` | [inv45_square84](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square84.md) | 173 | `result-track:acd3dcab2ac024e1efef85a5f12d21ba0696230d33ab3d6a47dc778671a2a4c0` |
| 169 | `theorem` | [inv45_product84](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product84.md) | 174 | `result-track:2d7866cba2309d56c9bafb93a3e3de16ba9bf149b10ed51762f80fdbc35db139` |
| 170 | `theorem` | [inv45_square85](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square85.md) | 175 | `result-track:4e040b353959a3ab3c0ce72f9058de5fe33d393f41f53fc53553623c5564d2d4` |
| 171 | `theorem` | [inv45_product85](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product85.md) | 176 | `result-track:84b55ce8aa649c25544a012fdf68359316642dddd010c7ca28905c2bf09d7365` |
| 172 | `theorem` | [inv45_square86](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square86.md) | 177 | `result-track:245e6d68fc49fe2e99a9e5b9b4f45b1405a8661b2f4dc90930efb6b12fc950e4` |
| 173 | `theorem` | [inv45_product86](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product86.md) | 178 | `result-track:dcdb8602c20499544a2752c7b71ffd0b6f0f9a859a018afc3d2541cf269c0648` |
| 174 | `theorem` | [inv45_square87](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square87.md) | 179 | `result-track:cbbbfa40ae8060c8aedaf9579b6bc860f32382e7d63fb0cbd7ee4d6d8a8b123b` |
| 175 | `theorem` | [inv45_product87](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product87.md) | 180 | `result-track:7c099bd6115191b9fe18a81401a49d099d1487ad8bb5f24204800220db9961ce` |
| 176 | `theorem` | [inv45_square88](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square88.md) | 181 | `result-track:5afc69d3781de0f53d8e2c4cf826da34bd7163c3922030f88f505331992b6ba1` |
| 177 | `theorem` | [inv45_product88](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product88.md) | 182 | `result-track:15c7547893194b3946a07ce45db9993bc1675abb7a6549474b635bd041adbe19` |
| 178 | `theorem` | [inv45_square89](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square89.md) | 183 | `result-track:8bbc84a75ff5c1b35badd416b0b17ed2589c8456c650a7c798a85d60e61730a5` |
| 179 | `theorem` | [inv45_product89](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product89.md) | 184 | `result-track:6d85e45686f6522f10a470bbff07ba2408bd62b856991ba61eca0965aa34baab` |
| 180 | `theorem` | [inv45_square90](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square90.md) | 185 | `result-track:526a8095adf71d928d25107706a7a7fa6f416e74cfe7b7bb82af7003c60c5eb0` |
| 181 | `theorem` | [inv45_product90](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product90.md) | 186 | `result-track:ab0c18ed0f23f03c1c982866189aec83862a285e7cea17be2fdac67c144aa67c` |
| 182 | `theorem` | [inv45_square91](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square91.md) | 187 | `result-track:968c181aee7cc991cf089805b8fa0a8479b279531bc5640ab204b9e9778a17ed` |
| 183 | `theorem` | [inv45_product91](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product91.md) | 188 | `result-track:ac48a3da7093ae58912d9d76c2101b78aba9b8f2b16039b58a6f952cd2408541` |
| 184 | `theorem` | [inv45_square92](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square92.md) | 189 | `result-track:2153156e0fbf012f35416fc7dc556d6783669df05a21a918bcd9e8e67b458f36` |
| 185 | `theorem` | [inv45_product92](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product92.md) | 190 | `result-track:c199f3ed4d224c1180f10a5c4f706a11086923f2641ba03863e0cf4e860928b9` |
| 186 | `theorem` | [inv45_square93](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square93.md) | 191 | `result-track:cdab9ebc5d16bac12dee1a3a90529a2af38b9b7445897c217646d5ca77c96ab7` |
| 187 | `theorem` | [inv45_product93](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product93.md) | 192 | `result-track:3ad5c0c7f6fd50d3ed8c20dab39a42e3500ec46f1d4ce652be15ff955d9cfe62` |
| 188 | `theorem` | [inv45_square94](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square94.md) | 193 | `result-track:b3946226e85dad4082c0d137a1ac1c4538b957aea674b6afdbffbdb5e904db22` |
| 189 | `theorem` | [inv45_product94](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product94.md) | 194 | `result-track:13389852b452ff67530f506d924c05f763bb822364d8821ffca4a5baa7771583` |
| 190 | `theorem` | [inv45_square95](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square95.md) | 195 | `result-track:2077f511b841d7feb467a468ce7160653343808d7e54729bb539d3147779f9e2` |
| 191 | `theorem` | [inv45_product95](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product95.md) | 196 | `result-track:f3f39bd3218a426af4d77549aa1619201985eee2dd166572ca40b526a8d861c8` |
| 192 | `theorem` | [inv45_square96](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square96.md) | 197 | `result-track:928d44d461d6ac8463b1d63393d0a6fc66a79bc24c41d2a6c16a1ce575eaf53b` |
| 193 | `theorem` | [inv45_product96](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product96.md) | 198 | `result-track:baa7038dae212c1d513fbc5e3346f70467fca173248cb5ced45b3c31bdd89be3` |
| 194 | `theorem` | [inv45_square97](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square97.md) | 199 | `result-track:b429284aacca76c9706971522af1ff1fa6026e6d4ca996525eea5758c37b4199` |
| 195 | `theorem` | [inv45_product97](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product97.md) | 200 | `result-track:2d172adbb6860ae26b6da59c0997508d8f33c3d0beb4c1d3ac952ab00ffd8151` |
| 196 | `theorem` | [inv45_square98](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square98.md) | 201 | `result-track:f1402f279aae3c44ae72a5d2fe895a68c815d6075dcafe150a52ec1e19742e24` |
| 197 | `theorem` | [inv45_product98](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product98.md) | 202 | `result-track:e5e97afcf37c731cdcb0461e710e6f3672242d21cead7a98015e3cdfcd191c3e` |
| 198 | `theorem` | [inv45_square99](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square99.md) | 203 | `result-track:8e6de32caf6b61bfa602ec9a0120b917277a1899a8daf376d1d15461c8894adb` |
| 199 | `theorem` | [inv45_product99](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product99.md) | 204 | `result-track:71a8550dbce022be0ed282833c76e84b12244b9da3d18f05e1584c187875c9b0` |
| 200 | `theorem` | [inv45_square100](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square100.md) | 205 | `result-track:d8ec0ff68ec0367aacfdd9491a2eb3dc365b77ddbbf73065132e0795e9567f90` |
| 201 | `theorem` | [inv45_product100](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product100.md) | 206 | `result-track:a63cf1fffd79319e958ad3b2ecc8173a15a720ca3ad06982d3b00f476449f204` |
| 202 | `theorem` | [inv45_square101](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square101.md) | 207 | `result-track:b74e5bafa78d7c815068079adfd1103d2bba9aac5aa3aa5618e0b6ea9a79c08f` |
| 203 | `theorem` | [inv45_product101](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product101.md) | 208 | `result-track:55288a94bdb6809981c6d200288c926019ddd5527e5da0aea2ac14ee1ee64f34` |
| 204 | `theorem` | [inv45_square102](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square102.md) | 209 | `result-track:212db1b8a72153a26e417e2ab2d0de129d1d258898202e83e3cc2414021ed2a8` |
| 205 | `theorem` | [inv45_product102](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product102.md) | 210 | `result-track:7ef1beb0bf28f78aef86dfcd09224ba49e2b2347aa1c8a0111d40c3ad3a491f8` |
| 206 | `theorem` | [inv45_square103](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square103.md) | 211 | `result-track:d9ebd9d8f8994889b77588adf8dfeab0541c1b1ba12db900c1fa73f7be9372eb` |
| 207 | `theorem` | [inv45_product103](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product103.md) | 212 | `result-track:9c06fd9ca7bdb35d80131e27eb2e5acd2703e619ef05f960d58ad729f5807cde` |
| 208 | `theorem` | [inv45_square104](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square104.md) | 213 | `result-track:345275796964b3316c4e51441d28bee271bd8f2f4d30cc7d2cbf54f8bc383987` |
| 209 | `theorem` | [inv45_product104](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product104.md) | 214 | `result-track:a812fb11ae8c2e9a88dc89efab28dcb03ef56350ba26ff28218c36f7d41225c5` |
| 210 | `theorem` | [inv45_square105](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square105.md) | 215 | `result-track:e01cfcc76313e4da0e80aedf48c3dc03824328396b85e89aa21d22317b577794` |
| 211 | `theorem` | [inv45_product105](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product105.md) | 216 | `result-track:da3e27ee69eef5ef53cdbd344e99a0194a14bc344f3c6f293b8d0edd6699f726` |
| 212 | `theorem` | [inv45_square106](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square106.md) | 217 | `result-track:abfa5a484de25790ddcbd6c1b35f64e9778c07362a6cf617dbed2708ad7d24f6` |
| 213 | `theorem` | [inv45_product106](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product106.md) | 218 | `result-track:05185c11bff7fa3a80f8d114e2185831c9e80eccce3708e3db0868bb8c5c54b6` |
| 214 | `theorem` | [inv45_square107](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square107.md) | 219 | `result-track:b4333925069c0f1db8eeaf1ba52a0234c749c87ce50fd9daa42b063c89991bc1` |
| 215 | `theorem` | [inv45_product107](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product107.md) | 220 | `result-track:35bbc69cec80ad865a64531cc42991dfe4f7e12059949363ba84f11fedc10c52` |
| 216 | `theorem` | [inv45_square108](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square108.md) | 221 | `result-track:e4aeb2dddc656251ae98d3c20823aa2a76f78275dd51caa81b41cb4219bf99ea` |
| 217 | `theorem` | [inv45_product108](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product108.md) | 222 | `result-track:2f6d0520b1071067280547db1a2e09053edaee538e2022d92bacd9dfbb2eb18e` |
| 218 | `theorem` | [inv45_square109](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square109.md) | 223 | `result-track:4d7378adbde5f0b0f5ce51ebe4e67430198513e678fb01bc936997273e441988` |
| 219 | `theorem` | [inv45_product109](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product109.md) | 224 | `result-track:0f8d77f7fce8bab13a1fe2e24275469dde2c4028b5e44be510cf02bc229a77f7` |
| 220 | `theorem` | [inv45_square110](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square110.md) | 225 | `result-track:b53dac8a8d519beff14b8f6e2a969d9ea0e8d426c275442082f39ddee2e3b133` |
| 221 | `theorem` | [inv45_product110](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product110.md) | 226 | `result-track:6ad48a06e9aba2ef2294c48071072655d6ca1b74bf91dd239cfd0b565bdee107` |
| 222 | `theorem` | [inv45_square111](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square111.md) | 227 | `result-track:2027ec0163078303f48dec5740f141c57725f9bed4b295bb40ea446534eccd8b` |
| 223 | `theorem` | [inv45_product111](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product111.md) | 228 | `result-track:db6d8984b7816ba99f39f0ba3f119603d8d22dbc7fc66ed4bfa831435faa5ed6` |
| 224 | `theorem` | [inv45_square112](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square112.md) | 229 | `result-track:2d3282b5d60e322805e514a40740e5b7ab81af01169da341643602964e48670b` |
| 225 | `theorem` | [inv45_product112](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product112.md) | 230 | `result-track:b798ba1448ed3ada4700ceb7f5ab9fea1f28a614ef4cb86c86a1efef53007b8f` |
| 226 | `theorem` | [inv45_square113](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square113.md) | 231 | `result-track:3eee4fbe75b48bee31d5d044bc249c7f885e9014a1787f665eba21fce64c05b2` |
| 227 | `theorem` | [inv45_product113](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product113.md) | 232 | `result-track:f9f67658a438c195e5686d76b446c7050d9e74c4e4ee5004585972046f20c798` |
| 228 | `theorem` | [inv45_square114](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square114.md) | 233 | `result-track:c6ebf8834d67202db113b2f49a2bce0f550c9cb9ee83cdbed55b0b007fd6b466` |
| 229 | `theorem` | [inv45_product114](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product114.md) | 234 | `result-track:5babdcce8b611375ac428b0b0fdc5c1fd4e08e8dfb9f1e9843c9e84dbb772903` |
| 230 | `theorem` | [inv45_square115](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square115.md) | 235 | `result-track:24b1534b4f248db9e4c5f6ee2513626957776913c8919176ac3c31f520762ff1` |
| 231 | `theorem` | [inv45_product115](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product115.md) | 236 | `result-track:679d93fe1216a1889da4b9151bc9e8ad3bce2ecb582613b61a7cb2aa793a073d` |
| 232 | `theorem` | [inv45_square116](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square116.md) | 237 | `result-track:858c08516b89652578f75917c7a2b467be4d694b78250aa016f329eff33cae86` |
| 233 | `theorem` | [inv45_product116](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product116.md) | 238 | `result-track:a8d784c39ebcc13888a59ae863b9261fae04ec37f8123b7c70bd8b16e9e7c30f` |
| 234 | `theorem` | [inv45_square117](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square117.md) | 239 | `result-track:881600e2d3f341f88d3bcffa2c5f2f4866779bfc2aa1d132c55f524318a3ebd6` |
| 235 | `theorem` | [inv45_product117](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product117.md) | 240 | `result-track:900b26e08bece82554d43143e6bfb335ac08d2c43bb16613a569f04b08e61329` |
| 236 | `theorem` | [inv45_square118](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square118.md) | 241 | `result-track:823bae9b884320c7abdbdf1b31f897b98e155f6fc9a679799a8a626b00fcd0bb` |
| 237 | `theorem` | [inv45_product118](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product118.md) | 242 | `result-track:b0d2eedf7352ae582358f37a35e4c5b175079c1960c3fc2d69745f0bc0a18a2f` |
| 238 | `theorem` | [inv45_square119](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square119.md) | 243 | `result-track:6ac1438538944f184a26076297ca8b287776c874fea997595958c744686220ea` |
| 239 | `theorem` | [inv45_product119](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product119.md) | 244 | `result-track:e3c46b640f8b520908100d014cde123b861b3527724496f667f14f7d0916418e` |
| 240 | `theorem` | [inv45_square120](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square120.md) | 245 | `result-track:8abedcde90dab9a1ee8541c8abd2f34d6d27c894aef1bc5b87d11f18ced940a5` |
| 241 | `theorem` | [inv45_product120](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product120.md) | 246 | `result-track:8bfd54e6bcbb7cab3c100e4df83897a3e8b2767954451e7ccf9c329722b43044` |
| 242 | `theorem` | [inv45_square121](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square121.md) | 247 | `result-track:c5b42925f6c3aea58c1e67128ad1fb9d5974e271f5d1dc07acde68bb1578958a` |
| 243 | `theorem` | [inv45_product121](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product121.md) | 248 | `result-track:39e287de5221bc6e42fecd5627d1772c9d6632580b1ae54055e96b62177513fa` |
| 244 | `theorem` | [inv45_square122](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square122.md) | 249 | `result-track:bb7903102504e54a47777b00a37c771d545d7819f7b53a012647a4319c48ed1c` |
| 245 | `theorem` | [inv45_product122](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product122.md) | 250 | `result-track:f4a6541941a4667ca1654e249e7dd54e80ee08a456d44be54b52d61340dd8db0` |
| 246 | `theorem` | [inv45_square123](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square123.md) | 251 | `result-track:9d08d6565f848da2e33afd74642d13217c2c90020faf8d66fcc6619ab1709e9c` |
| 247 | `theorem` | [inv45_product123](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product123.md) | 252 | `result-track:87bfe1f1ab1da9234f17432fddb63aa0b9836b914ea4b00b0697c3f3c9786493` |
| 248 | `theorem` | [inv45_square124](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square124.md) | 253 | `result-track:2198d732712566e37eeaae96a19fc40f405c73d827f42e7630bcf908ccbbfad2` |
| 249 | `theorem` | [inv45_product124](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product124.md) | 254 | `result-track:615538fe28481ccf577cd3a042ab24dec367fd71116275704be710391fce4bda` |
| 250 | `theorem` | [inv45_square125](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square125.md) | 255 | `result-track:50511d76c104b66eea0ad6d020a4e6b3014a10429ee8a21e74bc8b26a84fb8dd` |
| 251 | `theorem` | [inv45_product125](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product125.md) | 256 | `result-track:74525057af7820daeda3071a79aea5e62e113fff101582df943023ef560ab98f` |
| 252 | `theorem` | [inv45_square126](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square126.md) | 257 | `result-track:678a3de86b1ce8436023ec10ac8cc032d2f23dc8c85e79c57c61a392f34bdfe7` |
| 253 | `theorem` | [inv45_product126](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product126.md) | 258 | `result-track:3e57f26c485b979a8ca2ed636426535bcb0825a4ff38d563f22c31abcee8e5c2` |
| 254 | `theorem` | [inv45_square127](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-square127.md) | 259 | `result-track:226cdc0eeaf3428cfce74c8d4b15b066d95fd5320e3b77872d1d2c226225e38c` |
| 255 | `theorem` | [inv45_product127](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-product127.md) | 260 | `result-track:6098f358761d2246d57fbe87b0232f7ec5650481968a02179e1aeba41ae6b616` |
| 256 | `theorem` | [inv45_trace128](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace128.md) | 261 | `result-track:cee5cbc84d87d47aec97c2055959a4be8e6af97fbcb46042f12fd7799bb898f7` |
| 257 | `theorem` | [inv45_trace127](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace127.md) | 262 | `result-track:0b167024c8b9e116d8f0e7c152a09fafb6d91512fbfaa1af39953d0efb17dfdb` |
| 258 | `theorem` | [inv45_trace126](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace126.md) | 264 | `result-track:522f8b0c8045bc3f9f7c295b7b66ca49f8eb1c4757015780333faa44e070752f` |
| 259 | `theorem` | [inv45_trace125](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace125.md) | 266 | `result-track:e26511c1ec386dff1cbf1729f2e52df35e6cbc4ad36998910ccc7c34823e74e2` |
| 260 | `theorem` | [inv45_trace124](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace124.md) | 268 | `result-track:37402c60945d2af65d30e0bfe52644d8fb48a31f60d63493c6b4d3011047fd38` |
| 261 | `theorem` | [inv45_trace123](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace123.md) | 270 | `result-track:8037c46524d7bfe1ec6fa0abde4a290e900cda2d3ae4db9e5da3208503e12d01` |
| 262 | `theorem` | [inv45_trace122](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace122.md) | 272 | `result-track:a3986dcf4f19da6bee8447d56f515f95f2cb2650e29df28f3a6fa9eeeff3aae6` |
| 263 | `theorem` | [inv45_trace121](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace121.md) | 274 | `result-track:cd334d6dec1f7e9613e08d6124705960c339c4d0f93b3c6c05f85d71939e6ef1` |
| 264 | `theorem` | [inv45_trace120](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace120.md) | 276 | `result-track:84dcd786abf0244b501458f4d00de16d21689e3015ebfeeac8ca27b7c1548f21` |
| 265 | `theorem` | [inv45_trace119](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace119.md) | 278 | `result-track:4456a98f93c2e54b304480ba45bf4bf1f9faf5fc2e353a83cc2dfd4965bfe9d4` |
| 266 | `theorem` | [inv45_trace118](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace118.md) | 280 | `result-track:cb3581d16e25e7a812554e95cc9a9a5dbd6fa2664b1aedf47bc8e153831cddd7` |
| 267 | `theorem` | [inv45_trace117](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace117.md) | 282 | `result-track:b25a7f4790545a773982bb0e76b2628c753871f7422820acf31f45fc9d63feb1` |
| 268 | `theorem` | [inv45_trace116](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace116.md) | 284 | `result-track:c8bff6af0eff42f21103b135eaba942f7cdb0008223b099410fa259488921b2b` |
| 269 | `theorem` | [inv45_trace115](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace115.md) | 286 | `result-track:6b764cb67c67ad999e99f898c9428c9625a9a92ecf714f30aba1e2f265b18fdd` |
| 270 | `theorem` | [inv45_trace114](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace114.md) | 288 | `result-track:d0ba054e39a5a592bafc517a5368765f2414a819e440e7bdf13e308d49c2d61c` |
| 271 | `theorem` | [inv45_trace113](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace113.md) | 290 | `result-track:d8db1761771989b4546afe8df9b9489f3d55367a6628ce07b35b7e008c0e2bbc` |
| 272 | `theorem` | [inv45_trace112](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace112.md) | 292 | `result-track:d988ea175227e07999a626d2e59ba0e8ce2ececa0189a05775435c0d5be9b8c7` |
| 273 | `theorem` | [inv45_trace111](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace111.md) | 294 | `result-track:a86f6c02e6506648e7bbae18d876cc45fc8af11c795675ab593ea2cd71dc7e07` |
| 274 | `theorem` | [inv45_trace110](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace110.md) | 296 | `result-track:7fe75d65f60a191ba636c3730214ddfb30bf036f0885ace316f09f24ca0c00e0` |
| 275 | `theorem` | [inv45_trace109](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace109.md) | 298 | `result-track:1c7fbbd495614896372237ec55af284f1ee3fbc79e9791722f36e1aecf55792f` |
| 276 | `theorem` | [inv45_trace108](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace108.md) | 300 | `result-track:ad879abb87768a1e9ac09bab749f2d06e94ffbfa5f26228ab16ea4fecce082a5` |
| 277 | `theorem` | [inv45_trace107](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace107.md) | 302 | `result-track:0358430e8e1dcff2cf35b487fc8886f6df579ae1506c465835616f1ec08b9414` |
| 278 | `theorem` | [inv45_trace106](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace106.md) | 304 | `result-track:a72f00f9d9752a4adc5e41bad2727f114e70dda4939826ac170fd392f28ce539` |
| 279 | `theorem` | [inv45_trace105](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace105.md) | 306 | `result-track:b98f6f54f6b37aec06c4d4c63dc8ac3893bcad916ff1d98f3b7a9a0386d211fc` |
| 280 | `theorem` | [inv45_trace104](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace104.md) | 308 | `result-track:d7f70266edaf4014b5fd9235735c3d65fe6ae2eb78a8739d48f0503990fe8e8f` |
| 281 | `theorem` | [inv45_trace103](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace103.md) | 310 | `result-track:53ec871e9c4ecdb952bb5259ae7a7c098d148ff539613683de61899ff13dff17` |
| 282 | `theorem` | [inv45_trace102](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace102.md) | 312 | `result-track:2caf9a2b3f65d0e31c7b5b88fa5328409d9aba2e203d9a88e949444c9ff6f820` |
| 283 | `theorem` | [inv45_trace101](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace101.md) | 314 | `result-track:78b46d19f4e50ccc4fb7a7a4248510ceb6afd077a1e6a62e0319cd37329b46de` |
| 284 | `theorem` | [inv45_trace100](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace100.md) | 316 | `result-track:7af80fb2bbccc60ed8fa8791e52549b4068f1d2d2fad5c7b0a52ea9f17ce02ac` |
| 285 | `theorem` | [inv45_trace99](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace99.md) | 318 | `result-track:d3d959436aeb5882689a06147fc34ade51467b983f2d43d7e2581e71d0947624` |
| 286 | `theorem` | [inv45_trace98](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace98.md) | 320 | `result-track:47a0d681bebd5e1c9b55397893d081abbf3f445b54250c232a1559ef6cb3d911` |
| 287 | `theorem` | [inv45_trace97](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace97.md) | 322 | `result-track:0463e0500c77331bb5bdd46ad0aacc6bdbcd7170eba82d2d85ed192a3805eb37` |
| 288 | `theorem` | [inv45_trace96](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace96.md) | 324 | `result-track:ae293f482406b8bd6312fdf1bec1aa554c61062f05eb2a204de4e0695bec0495` |
| 289 | `theorem` | [inv45_trace95](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace95.md) | 326 | `result-track:f54e87a257007fdb40eb0f1ed2c8ed411fb883483d65e0af52cd1576b8846150` |
| 290 | `theorem` | [inv45_trace94](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace94.md) | 328 | `result-track:5718d166c4a4dd9c945216cf2697066765a9e00e90b86324a2a66792215778fe` |
| 291 | `theorem` | [inv45_trace93](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace93.md) | 330 | `result-track:b74d5e3fe5aed435f94cdcebe6b3285bd7a643c6cd97dd566de040be13d5b0ef` |
| 292 | `theorem` | [inv45_trace92](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace92.md) | 332 | `result-track:899c0c8ff60a68fdbdfda1a93976544eb328bf424a5534ebdb72bd7606b9f8b7` |
| 293 | `theorem` | [inv45_trace91](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace91.md) | 334 | `result-track:e2d34872cbc7891a8acefdd49bdd89608717f35fb99a5429b60b66b7a7120c33` |
| 294 | `theorem` | [inv45_trace90](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace90.md) | 336 | `result-track:e436627e3ee165338cf92ca446f231a7ee6abdb7ef4312b52b01ef3469901b7d` |
| 295 | `theorem` | [inv45_trace89](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace89.md) | 338 | `result-track:18854b21bde6b53856f945fb57cc44a41e497856b2b4ef3632bbdb2c979691cb` |
| 296 | `theorem` | [inv45_trace88](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace88.md) | 340 | `result-track:650aeb10591f9c263a9ccf2ebacf9803b279425a39fde6c02f9d72def84a1fe7` |
| 297 | `theorem` | [inv45_trace87](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace87.md) | 342 | `result-track:f0e4456f538f94cc65af61afe1fe4579151389219dfd942d286995faeae4b7a9` |
| 298 | `theorem` | [inv45_trace86](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace86.md) | 344 | `result-track:68f84a7ab39007b3c7d42527decdadb7fe2a0924ebb264da5479fdb640047e18` |
| 299 | `theorem` | [inv45_trace85](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace85.md) | 346 | `result-track:b60a7464780dd1d789921d8b450b43a77167e68bbb8522a30a609b30d7718b91` |
| 300 | `theorem` | [inv45_trace84](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace84.md) | 348 | `result-track:e3fb23bf8fab86713caf07b2ac137b432a5c7a5bb5f62c4d70511c2bac39bbc6` |
| 301 | `theorem` | [inv45_trace83](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace83.md) | 350 | `result-track:d35b80bb61d0ce0c0328f11c097596a4677ac62ac58481a1b680a30a6a8e2877` |
| 302 | `theorem` | [inv45_trace82](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace82.md) | 352 | `result-track:a6dfa362a20cc354879c98baebfbb2a27f58240e2ba62079101cbe64c7d660b4` |
| 303 | `theorem` | [inv45_trace81](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace81.md) | 354 | `result-track:80c4d998ec353ac19a939aa6e3b1bdf890a76b5484974c584a973fd5397861e2` |
| 304 | `theorem` | [inv45_trace80](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace80.md) | 356 | `result-track:af5f4ba6a7e4e299edc28ed6a8294959430ee7b892a7a074629e90c4fdd1eeec` |
| 305 | `theorem` | [inv45_trace79](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace79.md) | 358 | `result-track:73cbff39c4998734efd02c00a12be14bcc0f9e8c46f9464b241e09426816c26f` |
| 306 | `theorem` | [inv45_trace78](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace78.md) | 360 | `result-track:8f10b8e3ad99de8643a5b8716cfed859b29735f492f019f0cf0e160be159b8d7` |
| 307 | `theorem` | [inv45_trace77](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace77.md) | 362 | `result-track:2d4f7306e0c1ec735ed76f070537ca194c363b3068b2551ddb55c9a32a0e6685` |
| 308 | `theorem` | [inv45_trace76](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace76.md) | 364 | `result-track:62dd996025111f7c22e1d7935f3ad1255258240ad57298952a278cab04d7f0d5` |
| 309 | `theorem` | [inv45_trace75](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace75.md) | 366 | `result-track:34edacceb039e3c4fa4f4f96ab6683f5cb897eca959e9439402dd888004f2ebb` |
| 310 | `theorem` | [inv45_trace74](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace74.md) | 368 | `result-track:b977cf3f91d725ffd39b753694624b22257732fbf2f6a3b143df4a4b9ef7efa6` |
| 311 | `theorem` | [inv45_trace73](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace73.md) | 370 | `result-track:0815674717c4ffd06c95876533f2a0decac623831a67aeb994ee123becc807cc` |
| 312 | `theorem` | [inv45_trace72](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace72.md) | 372 | `result-track:22eaf7eaeb74d709b856ee7a4c7a0a8b3ccdfc3ddcc1af427ff52ba44d9b4936` |
| 313 | `theorem` | [inv45_trace71](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace71.md) | 374 | `result-track:9ed02aa630b1fbbbf75913f055abac043ce89aae6a7420647088ebc54658c177` |
| 314 | `theorem` | [inv45_trace70](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace70.md) | 376 | `result-track:e505e72b2f82fed39022e25173848e726cf97aab74dd5f444a7baef8b7efcd84` |
| 315 | `theorem` | [inv45_trace69](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace69.md) | 378 | `result-track:32823e104d2660f51e35991f731f1176612f6c8df3e6b1716d350e110f03e753` |
| 316 | `theorem` | [inv45_trace68](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace68.md) | 380 | `result-track:76de91bb484bc3b2f98bc3368e3750040888ed859996fcbb6e2785a02a88e86d` |
| 317 | `theorem` | [inv45_trace67](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace67.md) | 382 | `result-track:05b49b23c186a3e705763577b9a9e30467804acfdb019741ccac9cc27cddeb5f` |
| 318 | `theorem` | [inv45_trace66](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace66.md) | 384 | `result-track:53d4ba0e6d85ca42a233a9cc8cdaa578a99ce3b1e2ca8d3e6b3073a50b283783` |
| 319 | `theorem` | [inv45_trace65](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace65.md) | 386 | `result-track:fa1a155cbd0fd28918da92607215604f35dbdd72c285e70c3a4e191ea944c464` |
| 320 | `theorem` | [inv45_trace64](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace64.md) | 388 | `result-track:298b1dc694b3734b4546e7da4ea7cc367969b008e2caf40b8d3e5666d34c91ce` |
| 321 | `theorem` | [inv45_trace63](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace63.md) | 390 | `result-track:443e504a7e3d275ec4d334439e8ee3ccb015c627de23cffea65c0c0f737d9ec0` |
| 322 | `theorem` | [inv45_trace62](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace62.md) | 392 | `result-track:7d0f540aa7c8bfd26b8950bf282a6aa6c2dbc0df0de07baa0121c3caede9b4e7` |
| 323 | `theorem` | [inv45_trace61](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace61.md) | 394 | `result-track:61f1abadbfc7ca2d753c6c7c09d3743476e2ff92cc3db2e160b3454bd29152e8` |
| 324 | `theorem` | [inv45_trace60](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace60.md) | 396 | `result-track:58f5f4b10867c6ada059e8a2ec6d8343b0eb852b0507bff13a159d68da89304a` |
| 325 | `theorem` | [inv45_trace59](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace59.md) | 398 | `result-track:d3a1af8d372dd3519a5c311a6ca5bd880940a6760dc18e0d8de2374b1ec25d65` |
| 326 | `theorem` | [inv45_trace58](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace58.md) | 400 | `result-track:5a2f7f1cb4df707e605213f92acf41bdda997f62907d335c8c85c7c371c78597` |
| 327 | `theorem` | [inv45_trace57](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace57.md) | 402 | `result-track:931389964b74d5bbd16014b7637560853cb31c8c75b340f5bce937688ebf31d2` |
| 328 | `theorem` | [inv45_trace56](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace56.md) | 404 | `result-track:0742958a86bfda863ae9c417d4e0157fef13bfa000b62e9cf4504a4d05ee8d76` |
| 329 | `theorem` | [inv45_trace55](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace55.md) | 406 | `result-track:ce7ccd6b5ed5178a5ed7952777981276d7e04059522dc10397a17490079f8b65` |
| 330 | `theorem` | [inv45_trace54](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace54.md) | 408 | `result-track:f400d5851c2ab5948febd7982958c232711a4ca963d14406bcddfedf497d7c3c` |
| 331 | `theorem` | [inv45_trace53](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace53.md) | 410 | `result-track:2a1bf1953f1a91080a37ff9e0372d69e7070e087dc7649a67eae587252f286ba` |
| 332 | `theorem` | [inv45_trace52](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace52.md) | 412 | `result-track:bcd88f340c3bf73b5bc7e204a86ca691e3729fd0e1a853b47e9f97792de9292c` |
| 333 | `theorem` | [inv45_trace51](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace51.md) | 414 | `result-track:283f54cd84473a0cf0c66cdd4fd67dd0830bf47d7c9d40621dae1602b478dd42` |
| 334 | `theorem` | [inv45_trace50](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace50.md) | 416 | `result-track:16068cc5b31dbb806b2e41107919a39c84de8e071385c406e5ca41f01cdd1cb5` |
| 335 | `theorem` | [inv45_trace49](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace49.md) | 418 | `result-track:f26e14fd279702f01f71c1fee99e87fc1bd190f09066d62010d18002304ff694` |
| 336 | `theorem` | [inv45_trace48](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace48.md) | 420 | `result-track:2295a43a12a8c245b88addc36696441974ecafa254b2da928b7d5af31f0304f0` |
| 337 | `theorem` | [inv45_trace47](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace47.md) | 422 | `result-track:99a53cba5fffafa00bf3394c3f9f6f4f5c49b25f78aaaaee2cc2f9d5df003026` |
| 338 | `theorem` | [inv45_trace46](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace46.md) | 424 | `result-track:8d2718755a0dd834bff384518df4658b59037947cb7b78b3024ea8fdb49b2c5f` |
| 339 | `theorem` | [inv45_trace45](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace45.md) | 426 | `result-track:0a938702b8b197ea10eb127e4f4da27cc7ae56a23feb034555f9b288354f6d8f` |
| 340 | `theorem` | [inv45_trace44](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace44.md) | 428 | `result-track:ff030eff1403e73ed669f66f49cf334686bdc0bdf9b6d9061488dcd261b5d75f` |
| 341 | `theorem` | [inv45_trace43](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace43.md) | 430 | `result-track:5f79d2f267363db67820470d6ab9b82d410a76d2bcc2d249acea3ae60a2b737e` |
| 342 | `theorem` | [inv45_trace42](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace42.md) | 432 | `result-track:ff82ee96b393ea14e6d3770a39fb681f2794565c095b6e802acacb9dc9a07ca8` |
| 343 | `theorem` | [inv45_trace41](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace41.md) | 434 | `result-track:7accfd2802d758c794ac5f10965a1967975d30b0804f2bed73f22c46f00050ab` |
| 344 | `theorem` | [inv45_trace40](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace40.md) | 436 | `result-track:67154d8148a445a82a117a26dc1befaeedf60573b9d10cb44ce8db65c200d1ca` |
| 345 | `theorem` | [inv45_trace39](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace39.md) | 438 | `result-track:f4c6d39facef7be47e8a3b377e58a6fd7b16fd5ae9d5902e713666f5dd51362e` |
| 346 | `theorem` | [inv45_trace38](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace38.md) | 440 | `result-track:2efcfafebe41baf6b15f1b12d8fb5e22dfd933ff273fbc75cb3146504cfbc6bf` |
| 347 | `theorem` | [inv45_trace37](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace37.md) | 442 | `result-track:240668ab492fa6eeafbee808f2baf352414a9443281c89141dead7b7ee67a306` |
| 348 | `theorem` | [inv45_trace36](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace36.md) | 444 | `result-track:843068f8248a143973bec87c307ffa855160c7143c4e2b1661cb0053f85d1b34` |
| 349 | `theorem` | [inv45_trace35](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace35.md) | 446 | `result-track:e0d28b69c495181d63e77207be10487712857c0728611ae69b6b13b062c829d1` |
| 350 | `theorem` | [inv45_trace34](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace34.md) | 448 | `result-track:9c06cf6f8a7fa20b42833f26f3e4f1a8d0f6b3651e4cdca0a90bd03027df9c28` |
| 351 | `theorem` | [inv45_trace33](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace33.md) | 450 | `result-track:855025cf08ba11de27c073b75e7cea8444f14421d42a7cba9fccdb4d930da09d` |
| 352 | `theorem` | [inv45_trace32](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace32.md) | 452 | `result-track:4fd66732909e0de3f1c9097f9a2d066101f58ed37a178f52fbf1632931869ae1` |
| 353 | `theorem` | [inv45_trace31](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace31.md) | 454 | `result-track:0a6709d9d53ba8952a565f306a5dd7039a0da87821ce74fa3293ed3161192e0f` |
| 354 | `theorem` | [inv45_trace30](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace30.md) | 456 | `result-track:919300001bb1c6f3515177e7f6ff009d51d86b8a94ec3d5efb3d3d2025410b7d` |
| 355 | `theorem` | [inv45_trace29](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace29.md) | 458 | `result-track:673d2bb7d520e00ef173b48864701d51d7c1fd8a549a31882a88e90b0d30a1e3` |
| 356 | `theorem` | [inv45_trace28](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace28.md) | 460 | `result-track:0224f70903fdee7bf98273e023dbf233220b5ba58ac27f52940a844852a86713` |
| 357 | `theorem` | [inv45_trace27](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace27.md) | 462 | `result-track:693a5ab76c6131b416af41b8e7421139a647640e261410c6284cfb097426abc6` |
| 358 | `theorem` | [inv45_trace26](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace26.md) | 464 | `result-track:d4a2a82cc10d9e1d3c9250d2fefc9365b93e6eef302050d114ce58171ffe0e1e` |
| 359 | `theorem` | [inv45_trace25](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace25.md) | 466 | `result-track:6e057144fe7ce01be87210c5860c47575c197eb07bcc66432d222c764513b8ec` |
| 360 | `theorem` | [inv45_trace24](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace24.md) | 468 | `result-track:70af780931adfa60c98ed91c4e9626b25442ab58685cd3f95c0e3ef24dc56c62` |
| 361 | `theorem` | [inv45_trace23](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace23.md) | 470 | `result-track:c1480cf10d67982a6d192970c11df3e08ae018c039100b778e2f383b31a39c9e` |
| 362 | `theorem` | [inv45_trace22](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace22.md) | 472 | `result-track:8ec09b3824ea7bc2adaa4c425504ed294bba0dd4087af95b0cb802471ba520d5` |
| 363 | `theorem` | [inv45_trace21](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace21.md) | 474 | `result-track:4c415cfe9a5d5d44fed55a726a6729b1fa2b50177e12a47f5867275cc4694f48` |
| 364 | `theorem` | [inv45_trace20](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace20.md) | 476 | `result-track:5b424d927416217c85e1a560ae52b2b9098bc475f18dba06e5aa1565cd21bfa1` |
| 365 | `theorem` | [inv45_trace19](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace19.md) | 478 | `result-track:60a78b7f2c55f6470dccc52a3340d3ed7885877b7f93a372c264f9f1fd718c5f` |
| 366 | `theorem` | [inv45_trace18](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace18.md) | 480 | `result-track:5556d31701dc9ef9811f21afdba0bccf4b236269f23714d10b4af5f694c63627` |
| 367 | `theorem` | [inv45_trace17](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace17.md) | 482 | `result-track:1af063c142c0e5c7699123afcc6531aa4d2b5c5932c1577fdc9238f8c6c2fcf6` |
| 368 | `theorem` | [inv45_trace16](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace16.md) | 484 | `result-track:8c2450affb831e58eb8b308208f72a82163788d7cf4912b055da6c69a3bd8698` |
| 369 | `theorem` | [inv45_trace15](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace15.md) | 486 | `result-track:fd1c90835477bef6f6abfbc869ba0f9cb4042f2858dd19d23b2ede31eb9ea577` |
| 370 | `theorem` | [inv45_trace14](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace14.md) | 488 | `result-track:7c8783d9da8c0771d8b9f2a04b509bd3bf537657a187c414305be27fc5837da9` |
| 371 | `theorem` | [inv45_trace13](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace13.md) | 490 | `result-track:5d1bd83eb0be6019aee450a69778d9577f9057d07584aa32c4d81dd6c0cbaf0d` |
| 372 | `theorem` | [inv45_trace12](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace12.md) | 492 | `result-track:15b34ff6b4ad3a0c816309dca7d0b001d0b6fee11e0b96b7eb38df25f228e52d` |
| 373 | `theorem` | [inv45_trace11](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace11.md) | 494 | `result-track:02eec51952d94fc26bdcd2b28afc26ac803188fffa8ef5a57c311ac49b1e4895` |
| 374 | `theorem` | [inv45_trace10](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace10.md) | 496 | `result-track:b06f92744f5ce1000417305ac1bc4793616104805a548d86a255b7e01a31a57b` |
| 375 | `theorem` | [inv45_trace9](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace9.md) | 498 | `result-track:575d53bb8764917d95ba0821fa069c53ff911b0ee5e4b8c59ca030ea9f22a3eb` |
| 376 | `theorem` | [inv45_trace8](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace8.md) | 500 | `result-track:d744ec4e0ef43fee54ae0cd2bd8b04c5a3ca52fb7d0bd84bb26bc1131d34aace` |
| 377 | `theorem` | [inv45_trace7](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace7.md) | 502 | `result-track:b46d2dd4cbffff751180a05e8ddc5fce5dde8c6af52deb81cd06a88a12a6add2` |
| 378 | `theorem` | [inv45_trace6](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace6.md) | 504 | `result-track:6b8388b7eaefe37b636fdca4b1405beda575ac51b1d961940deb9eb4afcea0c9` |
| 379 | `theorem` | [inv45_trace5](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace5.md) | 506 | `result-track:b8cc4873af8f10b3dce2bcf4fa22c7722ee5c5c8c47880ef6d9d8aa4937d95e5` |
| 380 | `theorem` | [inv45_trace4](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace4.md) | 508 | `result-track:704973259acbb93a0a6bc57e114e0678a47d82b3271a44a9cd92b748be43207f` |
| 381 | `theorem` | [inv45_trace3](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace3.md) | 510 | `result-track:165ba54e8788318fe23890e256b2a7fbac0725b171be12d2c70fda80413f4656` |
| 382 | `theorem` | [inv45_trace2](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace2.md) | 512 | `result-track:0394f31da799e146acb74dfe8d3098c4b13c0845d2dad0a755c43405d46cc52e` |
| 383 | `theorem` | [inv45_trace1](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace1.md) | 514 | `result-track:d37aec381069ab691cebbc0057d464bda194e27f38e3c4c27217a18f2c82f63f` |
| 384 | `theorem` | [inv45_trace0](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-trace0.md) | 516 | `result-track:a25fd0e1e046ecf150d238695dde4aff6bfb83710d35624ad4d43f2166c0e114` |
| 385 | `theorem` | [inv45_exact](../../../../FieldTheoryAndPolynomials/Inv45.lean/declarations/inv45-exact.md) | 518 | `result-track:c2577957629eb9270a03ba1ceeed84b0fecdf09a692575eb840a67950a653356` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=846387b41728016388a71838b74765108d8ad87b21ead85f2f288d4302951679 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/FiniteField/GF128/Inv45.lean","GRWTSK/_verification/specifications/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Inv45.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
