# Verification target: GRWTSK.Topology.GeneralTopology.Sequential.Variant6418e1eaf7e52de3467f848df02158c60a4510b9279070494940b60729dc1ac4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf7f8faa77eb7e0d987eba8c9ba39db6f1ca3171",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Sequential/Variant6418e1eaf7e52de3467f848df02158c60a4510b9279070494940b60729dc1ac4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Sequential/Variant6418e1eaf7e52de3467f848df02158c60a4510b9279070494940b60729dc1ac4.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Sequential/Variant6418e1eaf7e52de3467f848df02158c60a4510b9279070494940b60729dc1ac4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf7f8faa77eb7e0d987eba8c9ba39db6f1ca3171`.

Source path: `GRWTSK/Topology/GeneralTopology/Sequential/Variant6418e1eaf7e52de3467f848df02158c60a4510b9279070494940b60729dc1ac4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Sequential/Variant6418e1eaf7e52de3467f848df02158c60a4510b9279070494940b60729dc1ac4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Elementwise` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sequences` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Discrete` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Sequential](../../../../../mathematics/Topology/GeneralTopology/Sequential/Variant6418e1eaf7e52de3467f848df02158c60a4510b9279070494940b60729dc1ac4.lean/declarations/sequential--22d0658ff2533d353646070f.md) | 24 | `declaration-track:22d0658ff2533d353646070fc1d7d7054a4e23b3cb875a35f3263f82df754d19` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Sequential/Variant6418e1eaf7e52de3467f848df02158c60a4510b9279070494940b60729dc1ac4.lean/declarations/instance--e54628e760b2a0d7adfede71.md) | 32 | `declaration-track:e54628e760b2a0d7adfede715ad641b5ee97a0686154e2f2ce2be5b5f496b1e8` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Sequential/Variant6418e1eaf7e52de3467f848df02158c60a4510b9279070494940b60729dc1ac4.lean/declarations/instance--5bf132953af47be69867fd78.md) | 35 | `declaration-track:5bf132953af47be69867fd78488bfbfaf979bf2db612bb6cbed6f74035741bf7` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Sequential/Variant6418e1eaf7e52de3467f848df02158c60a4510b9279070494940b60729dc1ac4.lean/declarations/instance--4b685438d37d673d5fcae1ae.md) | 40 | `declaration-track:4b685438d37d673d5fcae1ae5afbc449a7eace51ee27eab4054797653867c633` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Sequential/Variant6418e1eaf7e52de3467f848df02158c60a4510b9279070494940b60729dc1ac4.lean/declarations/instance--93056b024aaa5d8c2a407b98.md) | 43 | `declaration-track:93056b024aaa5d8c2a407b9885eeb7cff5b3b01baabe095c84ad47bb18a3a528` |
| 6 | `abbrev` | [of](../../../../../mathematics/Topology/GeneralTopology/Sequential/Variant6418e1eaf7e52de3467f848df02158c60a4510b9279070494940b60729dc1ac4.lean/declarations/of--1aa657e33197f39089bc7e8d.md) | 49 | `declaration-track:1aa657e33197f39089bc7e8d6b8d7f8ffdd9fe6f027f50851f19f454faa0b7e7` |
| 7 | `def` | [sequentialToTop](../../../../../mathematics/Topology/GeneralTopology/Sequential/Variant6418e1eaf7e52de3467f848df02158c60a4510b9279070494940b60729dc1ac4.lean/declarations/sequentialtotop--5e3a9772b9db0e0cd9ce051b.md) | 55 | `declaration-track:5e3a9772b9db0e0cd9ce051b78f8f1d136a93060ec9cbaddf717d851d73d0106` |
| 8 | `def` | [fullyFaithfulSequentialToTop](../../../../../mathematics/Topology/GeneralTopology/Sequential/Variant6418e1eaf7e52de3467f848df02158c60a4510b9279070494940b60729dc1ac4.lean/declarations/fullyfaithfulsequentialtotop--2530f89ba74d6e48b8e044f1.md) | 59 | `declaration-track:2530f89ba74d6e48b8e044f1bfc1e628616644b95d8962f4169f8b5a64beeb4b` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Sequential/Variant6418e1eaf7e52de3467f848df02158c60a4510b9279070494940b60729dc1ac4.lean/declarations/instance--de982bc53d9c9234e195a22e.md) | 62 | `declaration-track:de982bc53d9c9234e195a22ea40f4d7d650025ce43cded75a30ce5f5b9eddd55` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Sequential/Variant6418e1eaf7e52de3467f848df02158c60a4510b9279070494940b60729dc1ac4.lean/declarations/instance--c0931742a8913baa03e858c5.md) | 65 | `declaration-track:c0931742a8913baa03e858c50dda18212f04922067849650da1dfffe20b3f7ae` |
| 11 | `def` | [isoOfHomeo](../../../../../mathematics/Topology/GeneralTopology/Sequential/Variant6418e1eaf7e52de3467f848df02158c60a4510b9279070494940b60729dc1ac4.lean/declarations/isoofhomeo--9ea701dd598fe472fe6b2aad.md) | 70 | `declaration-track:9ea701dd598fe472fe6b2aad3c278adbd51cb7c0da6286af6da1d6e37162e4fd` |
| 12 | `def` | [homeoOfIso](../../../../../mathematics/Topology/GeneralTopology/Sequential/Variant6418e1eaf7e52de3467f848df02158c60a4510b9279070494940b60729dc1ac4.lean/declarations/homeoofiso--06fcc241179462b8002e23ba.md) | 82 | `declaration-track:06fcc241179462b8002e23baa3289349fdc81102336ec9564ee9b9ad2eb7fb34` |
| 13 | `def` | [isoEquivHomeo](../../../../../mathematics/Topology/GeneralTopology/Sequential/Variant6418e1eaf7e52de3467f848df02158c60a4510b9279070494940b60729dc1ac4.lean/declarations/isoequivhomeo--8fb2dd2c2e2df52c8424717d.md) | 93 | `declaration-track:8fb2dd2c2e2df52c8424717dda8e31964e63a7cf5a9bba01579bdb7bdd36a007` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
