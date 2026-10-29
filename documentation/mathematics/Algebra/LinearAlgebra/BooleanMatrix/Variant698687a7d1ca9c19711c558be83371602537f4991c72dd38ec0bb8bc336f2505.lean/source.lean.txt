import BooleanMatrix.Matrix.Pointwise
import BooleanMatrix.Matrix.Update
import BooleanMatrix.Application.Iteration
import BooleanMatrix.TypedApplication
import BooleanMatrix.Codec.Bool

/-!
# BooleanMatrix

A `Matrix` is a countably indexed Boolean carrier.

An `Application` accepts exactly one matrix and emits exactly one matrix:

    Application = Matrix → Matrix

Formats, codecs, and typed applications supply interpretation without changing
the common carrier.

This declaration-free module is the public aggregate.
-/
