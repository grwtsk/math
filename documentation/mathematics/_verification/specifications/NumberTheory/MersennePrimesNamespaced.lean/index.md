# Verification target: Mersenne Primes Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ded54a0521a43670a96e69b0648e5dec5f6929f",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/MersennePrimes/Variantcb15e4975336172948b093f00feadfcb985a05dfb9f4b9da6eec8a37ddf6b192.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/MersennePrimesNamespaced.lean/index.md) · [Full source](../../../../NumberTheory/MersennePrimesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ded54a0521a43670a96e69b0648e5dec5f6929f`.

Source path: `GRWTSK/NumberTheory/MersennePrimes/Variantcb15e4975336172948b093f00feadfcb985a05dfb9f4b9da6eec8a37ddf6b192.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/MersennePrimes/Variantcb15e4975336172948b093f00feadfcb985a05dfb9f4b9da6eec8a37ddf6b192.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LucasLehmer` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../NumberTheory/MersennePrimesNamespaced.lean/declarations/example-source-edition-14.md) | 26 | `declaration-track:c5a19141b8ab1ee4ce7fb7a4bebcff39e6e4fa52369f5b60bb2084a772656601` |
| 2 | `example` | [(anonymous)](../../../../NumberTheory/MersennePrimesNamespaced.lean/declarations/example-source-edition-2.md) | 28 | `declaration-track:27bb328ae1582d6fba5453890656fafb57b4f11be9960449440ccb5067bac352` |
| 3 | `example` | [(anonymous)](../../../../NumberTheory/MersennePrimesNamespaced.lean/declarations/example-source-edition-10.md) | 30 | `declaration-track:92b0d60bc68815f588f70cc37d136590ac82e9739f295ab50ce37949ee476c83` |
| 4 | `example` | [(anonymous)](../../../../NumberTheory/MersennePrimesNamespaced.lean/declarations/example-source-edition-15.md) | 33 | `declaration-track:cd82dcc93dec83feea095c98a6f7cfcbcf0917ff61590a00fe6e6d593558f0d7` |
| 5 | `example` | [(anonymous)](../../../../NumberTheory/MersennePrimesNamespaced.lean/declarations/example-source-edition-4.md) | 36 | `declaration-track:362aaa1832bfdbc545d40c155b58169766e7e199d5aa1e2613cf705d518f6237` |
| 6 | `example` | [(anonymous)](../../../../NumberTheory/MersennePrimesNamespaced.lean/declarations/example-source-edition-18.md) | 39 | `declaration-track:d365ec2ff06321cbfe29d5859cc328d35199d12007f5dda48383440d2192d74e` |
| 7 | `example` | [(anonymous)](../../../../NumberTheory/MersennePrimesNamespaced.lean/declarations/example-source-edition-11.md) | 42 | `declaration-track:a6751042b5a097d83f599adf0b2fe07cb1602ae5354f0580b7c37a28f9f986ce` |
| 8 | `example` | [(anonymous)](../../../../NumberTheory/MersennePrimesNamespaced.lean/declarations/example-source-edition-17.md) | 45 | `declaration-track:d2f9c17c67c01945508f6267ea3bc7ad0e2f8d3e02ea879ef93fd9261ec82615` |
| 9 | `example` | [(anonymous)](../../../../NumberTheory/MersennePrimesNamespaced.lean/declarations/example-source-edition-20.md) | 49 | `declaration-track:f1551562de6dd3278ffd8699f9bb0189f73dea124e4b23a279c008fe96b28864` |
| 10 | `example` | [(anonymous)](../../../../NumberTheory/MersennePrimesNamespaced.lean/declarations/example-source-edition-19.md) | 53 | `declaration-track:e3fdbbad6a6deb4ed45d20fb7fe529a244e18772a60eef243a628ac73bdc1b4a` |
| 11 | `example` | [(anonymous)](../../../../NumberTheory/MersennePrimesNamespaced.lean/declarations/example-source-edition-6.md) | 56 | `declaration-track:4254e2d6a74233a61faf8bfb7417b8e826f8d87fc01dac2cc7806193b86ecc76` |
| 12 | `example` | [(anonymous)](../../../../NumberTheory/MersennePrimesNamespaced.lean/declarations/example-source-edition-5.md) | 59 | `declaration-track:3f03c3d8b0cbb78350d2b4b0d8eb2839993100c37ee3eb35efaef81925eb8d3c` |
| 13 | `example` | [(anonymous)](../../../../NumberTheory/MersennePrimesNamespaced.lean/declarations/example-source-edition-13.md) | 63 | `declaration-track:be1f5f3d9b5fe22ddc5ef571830fb8210c1ba822290ce3d95ace62ee893a00dd` |
| 14 | `example` | [(anonymous)](../../../../NumberTheory/MersennePrimesNamespaced.lean/declarations/example-source-edition-21.md) | 67 | `declaration-track:fe154f9d9e35660676816155b6a085fac824ed93a044e3471bdc6f052b528dd4` |
| 15 | `example` | [(anonymous)](../../../../NumberTheory/MersennePrimesNamespaced.lean/declarations/example.md) | 70 | `declaration-track:10b7a6b2b0aee2fa45d2215b56b6965cd0e920fba534a5e92f7ea799b1b3f583` |
| 16 | `example` | [(anonymous)](../../../../NumberTheory/MersennePrimesNamespaced.lean/declarations/example-source-edition-8.md) | 73 | `declaration-track:4b0fa1a5d03b0fd17281a03b64b8f26b2971a8a6bfb183f359967fa3bab6734c` |
| 17 | `example` | [(anonymous)](../../../../NumberTheory/MersennePrimesNamespaced.lean/declarations/example-source-edition-12.md) | 76 | `declaration-track:b3183b4e0bc64961499a443b2db4f629024f588931e45350a18fe427ce085f7b` |
| 18 | `example` | [(anonymous)](../../../../NumberTheory/MersennePrimesNamespaced.lean/declarations/example-source-edition-7.md) | 79 | `declaration-track:483c59f45427b0c46e737c65a83d7727bda6f21e79d636710f4800b29b880928` |
| 19 | `example` | [(anonymous)](../../../../NumberTheory/MersennePrimesNamespaced.lean/declarations/example-source-edition-3.md) | 82 | `declaration-track:29b5bcabd3b3c5441b22098d982275ae105fc70ea3eb55c42bcec1968b0ad05d` |
| 20 | `example` | [(anonymous)](../../../../NumberTheory/MersennePrimesNamespaced.lean/declarations/example-source-edition-9.md) | 85 | `declaration-track:6477b62462b3186add9e3ef717065e346c0516d342340916a89a5d04c0b17cfd` |
| 21 | `example` | [(anonymous)](../../../../NumberTheory/MersennePrimesNamespaced.lean/declarations/example-source-edition-16.md) | 88 | `declaration-track:d0d4b6d5c26a7041ee6607ce901e29d086cdb7e4e88de79482f0471896ebd82f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3bc4b3fb7112b35ca99e16b4f493db4d0a81fb7daa69e6e13aca02f6d18b411e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/MersennePrimes/Variantcb15e4975336172948b093f00feadfcb985a05dfb9f4b9da6eec8a37ddf6b192.lean","GRWTSK/_verification/specifications/NumberTheory/MersennePrimes/Variantcb15e4975336172948b093f00feadfcb985a05dfb9f4b9da6eec8a37ddf6b192.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
