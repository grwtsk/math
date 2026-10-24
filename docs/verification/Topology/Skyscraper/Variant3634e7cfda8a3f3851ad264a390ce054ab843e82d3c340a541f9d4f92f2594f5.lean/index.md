# Verification target: GRWTSK.Topology.Skyscraper.Variant3634e7cfda8a3f3851ad264a390ce054ab843e82d3c340a541f9d4f92f2594f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9751ba8cc7927557270048d163af7eb64d03e005",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Skyscraper/Variant3634e7cfda8a3f3851ad264a390ce054ab843e82d3c340a541f9d4f92f2594f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/Skyscraper/Variant3634e7cfda8a3f3851ad264a390ce054ab843e82d3c340a541f9d4f92f2594f5.lean/index.md) · [Full source](../../../../mathematics/Topology/Skyscraper/Variant3634e7cfda8a3f3851ad264a390ce054ab843e82d3c340a541f9d4f92f2594f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9751ba8cc7927557270048d163af7eb64d03e005`.

Source path: `GRWTSK/Topology/Skyscraper/Variant3634e7cfda8a3f3851ad264a390ce054ab843e82d3c340a541f9d4f92f2594f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Skyscraper/Variant3634e7cfda8a3f3851ad264a390ce054ab843e82d3c340a541f9d4f92f2594f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sheaves.PUnit` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Stalks` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Functors` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [skyscraperPresheaf](../../../../mathematics/Topology/Skyscraper/Variant3634e7cfda8a3f3851ad264a390ce054ab843e82d3c340a541f9d4f92f2594f5.lean/declarations/skyscraperpresheaf--f36fc9833e473fd5d2139acd.md) | 61 | `declaration-track:f36fc9833e473fd5d2139acd6c30fe5e9d81adbaf8afa0f70525ae7198f116b2` |
| 2 | `theorem` | [skyscraperPresheaf_eq_pushforward](../../../../mathematics/Topology/Skyscraper/Variant3634e7cfda8a3f3851ad264a390ce054ab843e82d3c340a541f9d4f92f2594f5.lean/declarations/skyscraperpresheaf-eq-pushforward--9b8465cfbe43a880e0be794b.md) | 76 | `result-track:9b8465cfbe43a880e0be794b983c9280f71e0bbed6b4b04729596dd3977e40a7` |
| 3 | `def` | [SkyscraperPresheafFunctor.map'](../../../../mathematics/Topology/Skyscraper/Variant3634e7cfda8a3f3851ad264a390ce054ab843e82d3c340a541f9d4f92f2594f5.lean/declarations/skyscraperpresheaffunctor-map--a77d9e849ab414967576d061.md) | 90 | `declaration-track:a77d9e849ab414967576d061fbeddbebe098c0eb3a76bae062e978fc0ef51854` |
| 4 | `theorem` | [SkyscraperPresheafFunctor.map'_id](../../../../mathematics/Topology/Skyscraper/Variant3634e7cfda8a3f3851ad264a390ce054ab843e82d3c340a541f9d4f92f2594f5.lean/declarations/skyscraperpresheaffunctor-map-id--d9e5d8f2773231c17239df93.md) | 102 | `result-track:d9e5d8f2773231c17239df930b06a3d014c43161e96f5c1dc3bc37181f34c63c` |
| 5 | `theorem` | [SkyscraperPresheafFunctor.map'_comp](../../../../mathematics/Topology/Skyscraper/Variant3634e7cfda8a3f3851ad264a390ce054ab843e82d3c340a541f9d4f92f2594f5.lean/declarations/skyscraperpresheaffunctor-map-comp--d2aa4d60f7b59b853b41e44c.md) | 110 | `result-track:d2aa4d60f7b59b853b41e44cd950eb9e47cc712457b4b5c2e53c3d85b49bb92e` |
| 6 | `def` | [skyscraperPresheafFunctor](../../../../mathematics/Topology/Skyscraper/Variant3634e7cfda8a3f3851ad264a390ce054ab843e82d3c340a541f9d4f92f2594f5.lean/declarations/skyscraperpresheaffunctor--84b0b5169f80b5219412fa45.md) | 127 | `declaration-track:84b0b5169f80b5219412fa450b3f6f47cb6dc22d1bab3de9041fd9c25b66239b` |
| 7 | `def` | [skyscraperPresheafCoconeOfSpecializes](../../../../mathematics/Topology/Skyscraper/Variant3634e7cfda8a3f3851ad264a390ce054ab843e82d3c340a541f9d4f92f2594f5.lean/declarations/skyscraperpresheafcoconeofspecializes--07d0b1b0cd254971bb5bbf8a.md) | 145 | `declaration-track:07d0b1b0cd254971bb5bbf8a1a51c84259962227cbc02d5391f234315d7368b5` |
| 8 | `def` | [skyscraperPresheafCoconeIsColimitOfSpecializes](../../../../mathematics/Topology/Skyscraper/Variant3634e7cfda8a3f3851ad264a390ce054ab843e82d3c340a541f9d4f92f2594f5.lean/declarations/skyscraperpresheafcoconeiscolimitofspecializes--a5922e4ab862f7bf0bcb07c0.md) | 161 | `declaration-track:a5922e4ab862f7bf0bcb07c0a3eb7fe0f47249aec40d31ddaa6030e31e8e37f3` |
| 9 | `def` | [skyscraperPresheafStalkOfSpecializes](../../../../mathematics/Topology/Skyscraper/Variant3634e7cfda8a3f3851ad264a390ce054ab843e82d3c340a541f9d4f92f2594f5.lean/declarations/skyscraperpresheafstalkofspecializes--6aa69ce78d10de02d005c2bf.md) | 180 | `declaration-track:6aa69ce78d10de02d005c2bf9e4c7773a705a3eeadce9cc949065306e4aa7a0d` |
| 10 | `def` | [skyscraperPresheafCocone](../../../../mathematics/Topology/Skyscraper/Variant3634e7cfda8a3f3851ad264a390ce054ab843e82d3c340a541f9d4f92f2594f5.lean/declarations/skyscraperpresheafcocone--acefc26a2f577d635d8abe62.md) | 188 | `declaration-track:acefc26a2f577d635d8abe62b7ab44e8999efa895b5766a82f8c23754fe45753` |
| 11 | `def` | [skyscraperPresheafCoconeIsColimitOfNotSpecializes](../../../../mathematics/Topology/Skyscraper/Variant3634e7cfda8a3f3851ad264a390ce054ab843e82d3c340a541f9d4f92f2594f5.lean/declarations/skyscraperpresheafcoconeiscolimitofnotspecializes--726fad349fffc98e07056f25.md) | 200 | `declaration-track:726fad349fffc98e07056f25c6d5c6eb52172de3c0309689dc910393f7e47d6d` |
| 12 | `def` | [skyscraperPresheafStalkOfNotSpecializes](../../../../mathematics/Topology/Skyscraper/Variant3634e7cfda8a3f3851ad264a390ce054ab843e82d3c340a541f9d4f92f2594f5.lean/declarations/skyscraperpresheafstalkofnotspecializes--0d6b1a1e4f1bb866d9e0a4df.md) | 222 | `declaration-track:0d6b1a1e4f1bb866d9e0a4dfe803741046b52cf8b193622e30fdb08fdc9207b3` |
| 13 | `def` | [skyscraperPresheafStalkOfNotSpecializesIsTerminal](../../../../mathematics/Topology/Skyscraper/Variant3634e7cfda8a3f3851ad264a390ce054ab843e82d3c340a541f9d4f92f2594f5.lean/declarations/skyscraperpresheafstalkofnotspecializesisterminal--ea5b581cf583db39a0bbbfac.md) | 229 | `declaration-track:ea5b581cf583db39a0bbbfac9a4790cebe5ec7c58c63b2c74b7811c98c69fc34` |
| 14 | `theorem` | [skyscraperPresheaf_isSheaf](../../../../mathematics/Topology/Skyscraper/Variant3634e7cfda8a3f3851ad264a390ce054ab843e82d3c340a541f9d4f92f2594f5.lean/declarations/skyscraperpresheaf-issheaf--4bc14fcc05da42c114610e33.md) | 234 | `result-track:4bc14fcc05da42c114610e33eec84947cb793d548fdf50615056b9e64de86edd` |
| 15 | `def` | [skyscraperSheaf](../../../../mathematics/Topology/Skyscraper/Variant3634e7cfda8a3f3851ad264a390ce054ab843e82d3c340a541f9d4f92f2594f5.lean/declarations/skyscrapersheaf--8b7761650fb70663c4cb6ca7.md) | 249 | `declaration-track:8b7761650fb70663c4cb6ca79ea994db7d596686cf9cbc5ddf1f02c0b6a51762` |
| 16 | `def` | [skyscraperSheafFunctor](../../../../mathematics/Topology/Skyscraper/Variant3634e7cfda8a3f3851ad264a390ce054ab843e82d3c340a541f9d4f92f2594f5.lean/declarations/skyscrapersheaffunctor--241bbd34dcaf456636cc865c.md) | 257 | `declaration-track:241bbd34dcaf456636cc865caa2cc48659adf8aff7eda0ff6496604518a5be7b` |
| 17 | `def` | [toSkyscraperPresheaf](../../../../mathematics/Topology/Skyscraper/Variant3634e7cfda8a3f3851ad264a390ce054ab843e82d3c340a541f9d4f92f2594f5.lean/declarations/toskyscraperpresheaf--6e25b64852d8ad91e88a0973.md) | 273 | `declaration-track:6e25b64852d8ad91e88a09730d37da940e1189d230cf2f36f8790a76bf8311c2` |
| 18 | `def` | [fromStalk](../../../../mathematics/Topology/Skyscraper/Variant3634e7cfda8a3f3851ad264a390ce054ab843e82d3c340a541f9d4f92f2594f5.lean/declarations/fromstalk--d5775b52e3548276541d12fc.md) | 291 | `declaration-track:d5775b52e3548276541d12fcf7aa73fffc71b81785626aea846e088df26701bf` |
| 19 | `theorem` | [to_skyscraper_fromStalk](../../../../mathematics/Topology/Skyscraper/Variant3634e7cfda8a3f3851ad264a390ce054ab843e82d3c340a541f9d4f92f2594f5.lean/declarations/to-skyscraper-fromstalk--40b7a924f1d34468ccadab3e.md) | 307 | `result-track:40b7a924f1d34468ccadab3e632d7dc3d022d341ce64dc0c3439522215888aca` |
| 20 | `theorem` | [fromStalk_to_skyscraper](../../../../mathematics/Topology/Skyscraper/Variant3634e7cfda8a3f3851ad264a390ce054ab843e82d3c340a541f9d4f92f2594f5.lean/declarations/fromstalk-to-skyscraper--455e69f5921038ef0095609b.md) | 320 | `result-track:455e69f5921038ef0095609b7e3f910d212e7c41d7dc6acb89a740bccd2fd029` |
| 21 | `def` | [unit](../../../../mathematics/Topology/Skyscraper/Variant3634e7cfda8a3f3851ad264a390ce054ab843e82d3c340a541f9d4f92f2594f5.lean/declarations/unit--8cd11ccf89d64b35e276aad1.md) | 332 | `declaration-track:8cd11ccf89d64b35e276aad1f031a956f7451c2bb606df8e8430066946fa2f44` |
| 22 | `def` | [counit](../../../../mathematics/Topology/Skyscraper/Variant3634e7cfda8a3f3851ad264a390ce054ab843e82d3c340a541f9d4f92f2594f5.lean/declarations/counit--f9ec93dff82d743bde4929dc.md) | 350 | `declaration-track:f9ec93dff82d743bde4929dc368cd61ce7daaedf5c71f2e7c47acce81a4c56d1` |
| 23 | `def` | [skyscraperPresheafStalkAdjunction](../../../../mathematics/Topology/Skyscraper/Variant3634e7cfda8a3f3851ad264a390ce054ab843e82d3c340a541f9d4f92f2594f5.lean/declarations/skyscraperpresheafstalkadjunction--18d245a97c723e704818ca87.md) | 371 | `declaration-track:18d245a97c723e704818ca8748f7053613f859a4afc88b312fa5b7f690a4db10` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Topology/Skyscraper/Variant3634e7cfda8a3f3851ad264a390ce054ab843e82d3c340a541f9d4f92f2594f5.lean/declarations/instance--68f46bbe4b15b5563c3de221.md) | 399 | `declaration-track:68f46bbe4b15b5563c3de221ba11c49a5bd6bdd95e8f5c3c2bca97cc78919724` |
| 25 | `instance` | [(anonymous)](../../../../mathematics/Topology/Skyscraper/Variant3634e7cfda8a3f3851ad264a390ce054ab843e82d3c340a541f9d4f92f2594f5.lean/declarations/instance--d640edcfea24f1e712a716af.md) | 402 | `declaration-track:d640edcfea24f1e712a716af8a5fdae44ec58a731fb27634616e0f97adc64885` |
| 26 | `def` | [stalkSkyscraperSheafAdjunction](../../../../mathematics/Topology/Skyscraper/Variant3634e7cfda8a3f3851ad264a390ce054ab843e82d3c340a541f9d4f92f2594f5.lean/declarations/stalkskyscrapersheafadjunction--62dfb535bf2dc158133945d9.md) | 407 | `declaration-track:62dfb535bf2dc158133945d96fdd7fbf59254272f2a938fd2400ac15600842c4` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Topology/Skyscraper/Variant3634e7cfda8a3f3851ad264a390ce054ab843e82d3c340a541f9d4f92f2594f5.lean/declarations/instance--bb7216ac103d80e5ce692240.md) | 423 | `declaration-track:bb7216ac103d80e5ce692240b53d3f86d1b7cc51bf4fed45c0c9d27737dd231f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
