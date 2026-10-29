# Verification target: Variable

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ac9213cf7477e2b3f2412618f6dc24c48980d22",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Variable/Variant2379f7883982c260d109badb2877a4eb0242455284561b251ceeb22ea9fd07ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/Variable.lean/index.md) · [Full source](../../../../CommutativeAlgebra/Variable.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ac9213cf7477e2b3f2412618f6dc24c48980d22`.

Source path: `GRWTSK/Algebra/Variable/Variant2379f7883982c260d109badb2877a4eb0242455284561b251ceeb22ea9fd07ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Variable/Variant2379f7883982c260d109badb2877a4eb0242455284561b251ceeb22ea9fd07ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Defs` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.Defs` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Defs` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Regular` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LinearMap.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Variable` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../CommutativeAlgebra/Variable.lean/declarations/example-source-edition-7.md) | 23 | `declaration-track:64af61c51e6700afb980b78f28597dabefc5d737404381d13e1dd88a2a6966a2` |
| 2 | `example` | [(anonymous)](../../../../CommutativeAlgebra/Variable.lean/declarations/example-source-edition-16.md) | 24 | `declaration-track:d414a793375bcf40b83061bdd691212385387a234494fdfe04b8bcbd97559fd5` |
| 3 | `example` | [(anonymous)](../../../../CommutativeAlgebra/Variable.lean/declarations/example-source-edition-14.md) | 31 | `declaration-track:b4f27b223e744fbc886585d417bad94d6e65353d505253947bbe41d14b11d8eb` |
| 4 | `example` | [(anonymous)](../../../../CommutativeAlgebra/Variable.lean/declarations/example-source-edition-15.md) | 32 | `declaration-track:cbef291c9c28059c6be84d52b57b4488cbb1e2077191a7207a4bdb8d28000d35` |
| 5 | `example` | [(anonymous)](../../../../CommutativeAlgebra/Variable.lean/declarations/example-source-edition-11.md) | 33 | `declaration-track:9c73b64c146636e6226bcadecf14c5fd69d1d0a2753c0a71e830794afdf2b6df` |
| 6 | `example` | [(anonymous)](../../../../CommutativeAlgebra/Variable.lean/declarations/example-source-edition-17.md) | 40 | `declaration-track:dc6e6c6b4ceccd05aed623b3ecb38dd7639eb393bf306e83dda1b0686bf57452` |
| 7 | `example` | [(anonymous)](../../../../CommutativeAlgebra/Variable.lean/declarations/example-source-edition-3.md) | 41 | `declaration-track:46285b397029977e8ecf3df15a4273211a38660e51a8a4c46272fc9f3bd35d1f` |
| 8 | `example` | [(anonymous)](../../../../CommutativeAlgebra/Variable.lean/declarations/example-source-edition-5.md) | 42 | `declaration-track:5506dd800fbeb49ba2b3f32a71cb27daa58a8bbd8840699eceeefdb51696370e` |
| 9 | `class` | [A](../../../../CommutativeAlgebra/Variable.lean/declarations/a.md) | 77 | `declaration-track:9f5734138f273c1b45666721cd43afd81b8d4c94fded35bb34827c4683e99c82` |
| 10 | `class` | [B](../../../../CommutativeAlgebra/Variable.lean/declarations/b.md) | 78 | `declaration-track:d506bf0eeda714b4ac36e80d7afb4e3e901e1f3430af84a3b0d2337f251bc621` |
| 11 | `class` | [C](../../../../CommutativeAlgebra/Variable.lean/declarations/c.md) | 79 | `declaration-track:066c5ef00c16ce92836d3c210037cfba01b3e2e13b85853acfac2a78fad4ccb6` |
| 12 | `example` | [(anonymous)](../../../../CommutativeAlgebra/Variable.lean/declarations/example-source-edition-12.md) | 120 | `declaration-track:a94c01dd387330de7e441417dc877cec34286e5326c453fe64ef65c39103df9f` |
| 13 | `example` | [(anonymous)](../../../../CommutativeAlgebra/Variable.lean/declarations/example-source-edition-6.md) | 148 | `declaration-track:5edb702633c3d8c2b1520a34b1f0fd3386d223bec5c60bfb081347c7841835ae` |
| 14 | `structure` | [VectorSpace](../../../../CommutativeAlgebra/Variable.lean/declarations/vectorspace.md) | 153 | `declaration-track:135812f2489409e5c4323ddbaf5777a9250ee02af445360357ae782a680a5df6` |
| 15 | `example` | [(anonymous)](../../../../CommutativeAlgebra/Variable.lean/declarations/example-source-edition-2.md) | 159 | `declaration-track:3eb2528035869d8700c70b11534fdbe6cf8bf434979450dd0a8e00100602f72e` |
| 16 | `example` | [(anonymous)](../../../../CommutativeAlgebra/Variable.lean/declarations/example-source-edition-8.md) | 160 | `declaration-track:6aa4684a328633e6c16877f8742156dd571baad2deb56a312a5b2ccec2e8f5a3` |
| 17 | `example` | [(anonymous)](../../../../CommutativeAlgebra/Variable.lean/declarations/example.md) | 161 | `declaration-track:142998c38fa91771b294fc43ce1e0d630d37572a16abf443822349e86ccfa758` |
| 18 | `example` | [(anonymous)](../../../../CommutativeAlgebra/Variable.lean/declarations/example-source-edition-4.md) | 171 | `declaration-track:49c4d5be33c7f05d828c2e77babf5802e34b9352f019de3490cabfc5be859f96` |
| 19 | `example` | [(anonymous)](../../../../CommutativeAlgebra/Variable.lean/declarations/example-source-edition-9.md) | 172 | `declaration-track:6c5a5303bee8fd1f47020fddc4033a1fbf542bbb43d3bc62e881d2c243915c17` |
| 20 | `example` | [(anonymous)](../../../../CommutativeAlgebra/Variable.lean/declarations/example-source-edition-10.md) | 173 | `declaration-track:898ff9b923118a6ec0820bc786b4701495ba5988485e28d805c8515bae3ae7c3` |
| 21 | `example` | [(anonymous)](../../../../CommutativeAlgebra/Variable.lean/declarations/example-source-edition-18.md) | 174 | `declaration-track:e87542405c90f73beaac73fa405fbd9971787f8a8137484a13c8476bffd2fe03` |
| 22 | `example` | [(anonymous)](../../../../CommutativeAlgebra/Variable.lean/declarations/example-source-edition-13.md) | 175 | `declaration-track:ab8b17ced3f56c81d6e5a1a2cbf3fbc69be9b8772c7bad64744977ce74aefa8f` |
| 23 | `structure` | [Rep](../../../../CommutativeAlgebra/Variable.lean/declarations/rep.md) | 187 | `declaration-track:7f80dbe894119801400f27931141bdc79e729c82d17124013a0a3bfffc39166a` |
| 24 | `structure` | [UniqueFactorizationDomain](../../../../CommutativeAlgebra/Variable.lean/declarations/uniquefactorizationdomain.md) | 215 | `declaration-track:278f72bcab359b5be44c019ec7bc60f2c16a96ae572796ddd08bc5703ee6af25` |
| 25 | `class` | [foo](../../../../CommutativeAlgebra/Variable.lean/declarations/foo.md) | 261 | `declaration-track:d790f41e6d375630874dc7e7506edeca3ea3496b5e30e0a6427225cf5d643c72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7288194e03b94e87348526f028451c717780e95591e9da9f55ff908beb6b5b2e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Variable/Variant2379f7883982c260d109badb2877a4eb0242455284561b251ceeb22ea9fd07ae.lean","GRWTSK/_verification/specifications/Algebra/Variable/Variant2379f7883982c260d109badb2877a4eb0242455284561b251ceeb22ea9fd07ae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
