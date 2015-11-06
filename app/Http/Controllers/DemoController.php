<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;

class DemoController extends Controller {

	//

    // public function __construct() {

    //     $this->middleware('auth');
    // }



    function index() {

        $name = 'Brave';

        $persons = array('brave', 'john', 'hele');

        return view('demo.index', compact('name', 'persons'));
    }
}
