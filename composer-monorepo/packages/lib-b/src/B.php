<?php
namespace Fixture\LibB;

use Fixture\LibA\A;

class B
{
    public function world(): string { return (new A())->hello() . 'b'; }
}
