# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant6dfd49a898dfccd432361c802cdeeae6fbe4cec3dc86eb94e46839ebb990e367

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f2419f9091d5752f3af7ca5cece3d77d7bdf9caa` · SHA-256 `6dfd49a898dfccd432361c802cdeeae6fbe4cec3dc86eb94e46839ebb990e367`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Prelude

public section

/-- For decimal and scientific numbers (e.g., `1.23`, `3.12e10`).
   Examples:
   - `1.23` is syntax for `OfScientific.ofScientific (nat_lit 123) true (nat_lit 2)`
   - `121e100` is syntax for `OfScientific.ofScientific (nat_lit 121) false (nat_lit 100)`

   Note the use of `nat_lit`; there is no wrapping `OfNat.ofNat` in the resulting term.
-/
class OfScientific (α : Type u) where
  /--
  Produces a value from the given mantissa, exponent sign, and decimal exponent. For the exponent
  sign, `true` indicates a negative exponent.

   Examples:
   - `1.23` is syntax for `OfScientific.ofScientific (nat_lit 123) true (nat_lit 2)`
   - `121e100` is syntax for `OfScientific.ofScientific (nat_lit 121) false (nat_lit 100)`

   Note the use of `nat_lit`; there is no wrapping `OfNat.ofNat` in the resulting term.
  -/
  ofScientific (mantissa : Nat) (exponentSign : Bool) (decimalExponent : Nat) : α
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a1fe65ea2bb38e9b933fefd0212349a7e87690408cbc095bbc1f064cb663a99f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6dfd49a898dfccd432361c802cdeeae6fbe4cec3dc86eb94e46839ebb990e367.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
